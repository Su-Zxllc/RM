import 'package:dartx/dartx.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/widget/animated_visibility.dart';
import 'package:reaeeman/core/widget/shimmer_skeleton.dart';
import 'package:reaeeman/features/proxy/active/active_proxy_notifier.dart';
import 'package:reaeeman/features/proxy/model/proxy_failure.dart';
import 'package:reaeeman/features/stats/notifier/stats_notifier.dart';
import 'package:reaeeman/gen/fonts.gen.dart';
import 'package:reaeeman/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sp_util/sp_util.dart';

class ActiveProxyHeader extends HookConsumerWidget {
  const ActiveProxyHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    final activeProxy = ref.watch(activeProxyNotifierProvider);

    return AnimatedVisibility(
      axis: Axis.vertical,
      visible: activeProxy is AsyncData,
      child: switch (activeProxy) {
        AsyncData(value: final proxy) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // 修改这里使 _InfoProp 控件居中
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // 修改这里使 Column 控件居中
                    children: [
                      GestureDetector(
                        onTap: () {
                          // 在这里处理点击事件
                          context.push('/proxies-list');
                        },
                        child: _InfoProp(
                          text: proxy.selectedName.isNotNullOrBlank
                              ? proxy.selectedName!
                              : proxy.name,
                          semanticLabel: t.proxies.activeProxySemanticLabel,
                        ),
                      ),
                    ],
                  ),
                ),
                // const _StatsColumn(),
              ],
            ),
          ),
        _ => const SizedBox(),
      },
    );
  }
}

class _InfoProp extends HookConsumerWidget {
  const _InfoProp({
    required this.text,
    this.semanticLabel,
  });

  final String text;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    
    return Semantics(
      label: semanticLabel,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            t.proxies.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                ),
          ),
          const Gap(10),
          Flexible(
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Gap(6),
          Icon(
            FluentIcons.chevron_right_20_filled,
            size: 20,
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
