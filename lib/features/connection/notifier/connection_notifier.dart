import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reaeeman/core/haptic/haptic_service.dart';
import 'package:reaeeman/core/preferences/general_preferences.dart';
import 'package:reaeeman/features/connection/data/connection_data_providers.dart';
import 'package:reaeeman/features/connection/data/connection_repository.dart';
import 'package:reaeeman/features/connection/model/connection_status.dart';
import 'package:reaeeman/features/profile/model/profile_entity.dart';
import 'package:reaeeman/features/profile/notifier/active_profile_notifier.dart';
import 'package:reaeeman/utils/platform_utils.dart';
import 'package:reaeeman/utils/custom_loggers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:in_app_review/in_app_review.dart';

part 'connection_notifier.g.dart';

@Riverpod(keepAlive: true)
class ConnectionNotifier extends _$ConnectionNotifier with AppLogger {
  ConnectionStatus? _cachedStatus;

  @override
  Stream<ConnectionStatus> build() async* {
    if (Platform.isIOS) {
      await _connectionRepo.setup().mapLeft((l) {
        loggy.error("error setting up connection repository", l);
      }).run();
    }

    ref.listenSelf(
      (previous, next) async {
        if (previous == next) return;
        if (previous case AsyncData(:final value) when !value.isConnected) {
          if (next case AsyncData(value: final Connected _)) {
            await ref.read(hapticServiceProvider.notifier).heavyImpact();

            if (Platform.isAndroid &&
                !ref.read(Preferences.storeReviewedByUser)) {
              if (await InAppReview.instance.isAvailable()) {
                InAppReview.instance.requestReview();
                ref.read(Preferences.storeReviewedByUser.notifier).update(true);
              }
            }
          }
        }
      },
    );

    // 只在用户之前已经连接的情况下恢复连接状态
    if (_cachedStatus != null && ref.read(Preferences.startedByUser)) {
      yield _cachedStatus!;
    } else {
      yield const ConnectionStatus.disconnected();
    }

    ref.listen(
      activeProfileProvider,
      (previous, next) async {
        if (previous?.value == null) return;
        final prevProfile = previous?.value;
        final nextProfile = next?.value;
        // 只在用户已经启动连接的情况下自动重连
        if (ref.read(Preferences.startedByUser)) {
          final shouldReconnect = nextProfile == null || prevProfile?.id != nextProfile.id;
          if (shouldReconnect) {
            await reconnect(nextProfile);
          }
        }
      },
    );

    // 获取初始连接状态
    final initialStatus = await _connectionRepo.watchConnectionStatus().first;
    if (initialStatus is Connected && ref.read(Preferences.startedByUser)) {
      _cachedStatus = initialStatus;
      yield initialStatus;
    } else {
      yield const ConnectionStatus.disconnected();
    }

    // 使用 distinct 避免重复的状态更新
    yield* _connectionRepo.watchConnectionStatus().map((event) {
      _cachedStatus = event;
      
      if (event case Disconnected(connectionFailure: final _?)
          when PlatformUtils.isDesktop) {
        ref.read(Preferences.startedByUser.notifier).update(false);
      }
      loggy.info("connection status: ${event.format()}");
      return event;
    }).distinct();
  }

  Future<void> reconnect([ProfileEntity? profile]) async {
    if (state case AsyncData(value: final status) when status.isSwitching) {
      loggy.warning("switching status, debounce");
      return;
    }

    if (profile == null) {
      try {
        profile = await ref.read(activeProfileProvider.future);
      } catch (e) {
        loggy.info("no active profile, disconnecting");
        return abortConnection();
      }
      loggy.info("active profile changed, reconnecting");
    }

    try {
      if (profile == null) {
        loggy.warning("no profile provided for reconnection");
        return;
      }

      await _connectionRepo
          .connect(
            profile.id,
            profile.name,
            ref.read(Preferences.disableMemoryLimit),
          )
          .run();
    } catch (err) {
      loggy.warning("error reconnecting", err);
    }
  }

  Future<void> abortConnection() async {
    try {
      if (state case AsyncData(value: final status) when status.isSwitching) {
        loggy.debug("aborting connection");
        return;
      }

      await _connectionRepo.disconnect().run();
    } catch (err) {
      loggy.warning("error disconnecting", err);
    }
  }

  ConnectionRepository get _connectionRepo =>
      ref.read(connectionRepositoryProvider);

  Future<void> mayConnect() async {
    if (state case AsyncData(:final value)) {
      if (value case Disconnected()) return _connect();
    }
  }

  Future<void> toggleConnection() async {
    final haptic = ref.read(hapticServiceProvider.notifier);
    if (state case AsyncError()) {
      await haptic.lightImpact();
      await _connect();
    } else if (state case AsyncData(:final value)) {
      switch (value) {
        case Disconnected():
          await haptic.lightImpact();
          await ref.read(Preferences.startedByUser.notifier).update(true);
          await _connect();
        case Connected():
          await haptic.mediumImpact();
          await ref.read(Preferences.startedByUser.notifier).update(false);
          await _disconnect();
        default:
          loggy.warning("switching status, debounce");
      }
    }
  }

  Future<void> _connect() async {
    final activeProfile = await ref.read(activeProfileProvider.future);
    if (activeProfile == null) {
      loggy.info("no active profile, not connecting");
      return;
    }
    await _connectionRepo
        .connect(
      activeProfile.id,
      activeProfile.name,
      ref.read(Preferences.disableMemoryLimit),
    )
        .mapLeft((err) async {
      loggy.warning("error connecting", err);
      //Go err is not normal object to see the go errors are string and need to be dumped
      loggy.warning(err);
      if (err.toString().contains("panic")) {
        await Sentry.captureException(Exception(err.toString()));
      }
      await ref.read(Preferences.startedByUser.notifier).update(false);
      state = AsyncError(err, StackTrace.current);
    }).run();
  }

  Future<void> _disconnect() async {
    await _connectionRepo.disconnect().mapLeft((err) {
      loggy.warning("error disconnecting", err);
      state = AsyncError(err, StackTrace.current);
    }).run();
  }
}

@Riverpod(keepAlive: true)
Future<bool> serviceRunning(ServiceRunningRef ref) => ref
    .watch(
      connectionNotifierProvider.selectAsync((data) => data.isConnected),
    )
    .onError((error, stackTrace) => false);
