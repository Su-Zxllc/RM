import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reaeeman/core/preferences/general_preferences.dart';
import 'package:reaeeman/core/router/routes.dart';
import 'package:reaeeman/features/deep_link/notifier/deep_link_notifier.dart';
import 'package:reaeeman/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart' as prefs;
import 'package:sp_util/sp_util.dart';

part 'app_router.g.dart';

bool _debugMobileRouter = false;

final useMobileRouter =
    !PlatformUtils.isDesktop || (kDebugMode && _debugMobileRouter);
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

// TODO: test and improve handling of deep link
@riverpod
GoRouter router(RouterRef ref) {
  final notifier = ref.watch(routerListenableProvider.notifier);
  final deepLink = ref.listen(
    deepLinkNotifierProvider,
    (_, next) async {
      if (next case AsyncData(value: final link?)) {
        await ref.state.push(AddProfileRoute(url: link.url).location);
      }
    },
  );
  final initialLink = deepLink.read();
  String initialLocation = const HomeRoute().location;
  if (initialLink case AsyncData(value: final link?)) {
    initialLocation = AddProfileRoute(url: link.url).location;
  }

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: initialLocation,
    debugLogDiagnostics: true,
    routes: [
      if (useMobileRouter) $mobileWrapperRoute else $desktopWrapperRoute,
      $introRoute,
    ],
    refreshListenable: notifier,
    redirect: notifier.redirect,
    observers: [
      SentryNavigatorObserver(),
    ],
  );
}

List<String> get tabLocations {
  final String token = SpUtil.getString("token") ?? "";
  prefs.SharedPreferences.getInstance().then((sharedPrefs) {
    final persistedToken = sharedPrefs.getString('token');
    if (persistedToken != null && persistedToken.isNotEmpty) {
      SpUtil.putString("token", persistedToken);
    }
  });

  final List<String> locations = [
    const HomeRoute().location,
    if (token.isNotEmpty) const SubscribeRoute().location else 'notLoggedIn',
    if (token.isNotEmpty) const CenterRoute().location else 'notLoggedIn',
    if (token.isNotEmpty) const KnowledgeRoute().location else 'notLoggedIn',
    const SettingsRoute().location,
    const AboutRoute().location,
  ];

  return locations;
}

int getCurrentIndex(BuildContext context) {
  final String location = GoRouterState.of(context).uri.path;
  if (location == const HomeRoute().location) return 0;
  var index = 0;
  for (final tab in tabLocations.sublist(1)) {
    index++;
    if (location.startsWith(tab)) return index;
  }
  return 0;
}

void switchTab(int index, BuildContext context) {
  // 如果用户未登录且尝试切换到未登录的页面，提示暂未登录
  if (tabLocations[index] == 'notLoggedIn') {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('提示'),
        content: Text('您暂未登录'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('确定'),
          ),
        ],
      ),
    );
    return;
  }

  assert(index >= 0 && index < tabLocations.length);
  final location = tabLocations[index];
  return context.go(location);
}

@riverpod
class RouterListenable extends _$RouterListenable
    with AppLogger
    implements Listenable {
  VoidCallback? _routerListener;
  bool _introCompleted = false;

  @override
  Future<void> build() async {
    _introCompleted = ref.watch(Preferences.introCompleted);

    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      loggy.debug("triggering listener");
      _routerListener?.call();
    });
  }

// ignore: avoid_build_context_in_providers
  Future<String?> redirect(BuildContext context, GoRouterState state) async {
    final isIntro = state.uri.path == const IntroRoute().location;
    final isLoginPage = state.uri.path == const LoginRoute().location;

    // 先检查 SharedPreferences 中的持久化登录状态
    final sharedPrefs = await prefs.SharedPreferences.getInstance();
    final persistedToken = sharedPrefs.getString('token');
    final isLoggedIn = persistedToken != null && persistedToken.isNotEmpty;

    // 如果有持久化的 token，同步到 SpUtil
    if (isLoggedIn) {
      SpUtil.putString("token", persistedToken);
    }

    if (!_introCompleted) {
      return const IntroRoute().location;
    } else if (isIntro) {
      return const HomeRoute().location;
    }

    // Force login if not logged in and not already on login page
    if (!isLoggedIn && !isLoginPage) {
      return const LoginRoute().location;
    }

    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    _routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _routerListener = null;
  }
}
