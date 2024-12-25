import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/model/failures.dart';
import 'package:reaeeman/core/theme/theme_extensions.dart';
import 'package:reaeeman/core/widget/animated_text.dart';
import 'package:reaeeman/features/config_option/data/config_option_repository.dart';
import 'package:reaeeman/features/config_option/notifier/config_option_notifier.dart';
import 'package:reaeeman/features/connection/model/connection_status.dart';
import 'package:reaeeman/features/connection/notifier/connection_notifier.dart';
import 'package:reaeeman/features/connection/widget/experimental_feature_notice.dart';
import 'package:reaeeman/features/profile/notifier/active_profile_notifier.dart';
import 'package:reaeeman/features/proxy/active/active_proxy_header.dart';
import 'package:reaeeman/gen/assets.gen.dart';
import 'package:reaeeman/gen/fonts.gen.dart';
import 'package:reaeeman/utils/alerts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

// TODO: rewrite
class ConnectionButton extends HookConsumerWidget {
  const ConnectionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    final connectionStatus = ref.watch(connectionNotifierProvider);
    final requiresReconnect =
        ref.watch(configOptionNotifierProvider).valueOrNull;
    final today = DateTime.now();

    ref.listen(
      connectionNotifierProvider,
      (_, next) {
        if (next case AsyncError(:final error)) {
          CustomAlertDialog.fromErr(t.presentError(error)).show(context);
        }
        if (next
            case AsyncData(value: Disconnected(:final connectionFailure?))) {
          CustomAlertDialog.fromErr(t.presentError(connectionFailure))
              .show(context);
        }
      },
    );

    final buttonTheme = Theme.of(context).extension<ConnectionButtonTheme>()!;

    Future<bool> showExperimentalNotice() async {
      final hasExperimental = ref.read(ConfigOptions.hasExperimentalFeatures);
      final canShowNotice = !ref.read(disableExperimentalFeatureNoticeProvider);
      if (hasExperimental && canShowNotice && context.mounted) {
        return await const ExperimentalFeatureNoticeDialog().show(context) ??
            false;
      }
      return true;
    }

    return _ConnectionButton(
      onTap: switch (connectionStatus) {
        AsyncData(value: Disconnected()) || AsyncError() => () async {
            if (await showExperimentalNotice()) {
              return await ref
                  .read(connectionNotifierProvider.notifier)
                  .toggleConnection();
            }
          },
        AsyncData(value: Connected()) => () async {
            if (requiresReconnect == true && await showExperimentalNotice()) {
              return await ref
                  .read(connectionNotifierProvider.notifier)
                  .reconnect(await ref.read(activeProfileProvider.future));
            }
            return await ref
                .read(connectionNotifierProvider.notifier)
                .toggleConnection();
          },
        _ => () {},
      },
      enabled: switch (connectionStatus) {
        AsyncData(value: Connected()) ||
        AsyncData(value: Disconnected()) ||
        AsyncError() =>
          true,
        _ => false,
      },
      label: switch (connectionStatus) {
        AsyncData(value: Connected()) when requiresReconnect == true =>
          t.connection.reconnect,
        AsyncData(value: final status) => status.present(t),
        _ => "",
      },
      buttonColor: switch (connectionStatus) {
        AsyncData(value: Connected()) when requiresReconnect == true =>
          Colors.teal,
        AsyncData(value: Connected()) => buttonTheme.connectedColor!,
        AsyncData(value: _) => buttonTheme.idleColor!,
        _ => Colors.red,
      },
      image: switch (connectionStatus) {
        AsyncData(value: Connected()) when requiresReconnect == true =>
          FluentIcons.arrow_sync_24_filled,
        AsyncData(value: Connected()) =>
          FluentIcons.shield_checkmark_24_filled,
        AsyncData(value: _) =>
          FluentIcons.power_24_filled,
        _ => FluentIcons.power_24_filled,
      },
    );
  }
}

class _ConnectionButton extends StatelessWidget {
  const _ConnectionButton({
    required this.onTap,
    required this.enabled,
    required this.label,
    required this.buttonColor,
    required this.image,
  });

  final VoidCallback onTap;
  final bool enabled;
  final String label;
  final Color buttonColor;
  final IconData image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ActiveProxyHeader(),
        const SizedBox(height: 24),
        Semantics(
          button: true,
          enabled: enabled,
          label: label,
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  buttonColor.withOpacity(0.8),
                  buttonColor,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: buttonColor.withOpacity(0.3),
                ),
              ],
            ),
            width: 110,
            height: 110,
            child: Material(
              key: const ValueKey("home_connection_button"),
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(22),
                      child: Icon(
                        image,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ).animate(target: enabled ? 0 : 1)
           .blurXY(end: 1)
           .scaleXY(end: 0.95, curve: Curves.easeInOut)
           .shimmer(duration: const Duration(seconds: 2)),
        ),
        const Gap(16),
        ExcludeSemantics(
          child: AnimatedText(
            label,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class _InfoProp extends StatelessWidget {
  const _InfoProp({
    required this.icon,
    required this.text,
    this.semanticLabel,
  });

  final IconData icon;
  final String text;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticLabel,
      child: Row(
        children: [
          Icon(icon),
          const Gap(8),
          Flexible(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(fontFamily: FontFamily.emoji),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
