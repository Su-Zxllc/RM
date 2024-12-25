import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/model/failures.dart';
import 'package:reaeeman/features/common/nested_app_bar.dart';
import 'package:reaeeman/features/proxy/overview/proxies_overview_notifier.dart';
import 'package:reaeeman/features/proxy/widget/proxy_tile.dart';
import 'package:reaeeman/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class ProxiesListPage extends HookConsumerWidget with PresLogger {
//   const ProxiesListPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final t = ref.watch(translationsProvider);

//     final asyncProxies = ref.watch(proxiesOverviewNotifierProvider);
//     final notifier = ref.watch(proxiesOverviewNotifierProvider.notifier);
//     final sortBy = ref.watch(proxiesSortNotifierProvider);

//     final selectActiveProxyMutation = useMutation(
//       initialOnFailure: (error) =>
//           CustomToast.error(t.presentShortError(error)).show(context),
//     );

//     final appBar = NestedAppBar(
//       title: Text(t.proxies.pageTitle),
//       actions: [
//         PopupMenuButton<ProxiesSort>(
//           initialValue: sortBy,
//           onSelected: ref.read(proxiesSortNotifierProvider.notifier).update,
//           icon: const Icon(FluentIcons.arrow_sort_24_regular),
//           tooltip: t.proxies.sortTooltip,
//           itemBuilder: (context) {
//             return [
//               ...ProxiesSort.values.map(
//                 (e) => PopupMenuItem(
//                   value: e,
//                   child: Text(e.present(t)),
//                 ),
//               ),
//             ];
//           },
//         ),
//       ],
//     );

//     // final appBar = NestedAppBar(
//     //   title: Text(t.proxies.pageTitle),
//     //   actions: [
//     //     PopupMenuButton<ProxiesSort>(
//     //       initialValue: sortBy,
//     //       onSelected: ref.read(proxiesSortNotifierProvider.notifier).update,
//     //       icon: const Icon(FluentIcons.arrow_sort_24_regular),
//     //       tooltip: t.proxies.sortTooltip,
//     //       itemBuilder: (context) {
//     //         return [
//     //           ...ProxiesSort.values.map(
//     //             (e) => PopupMenuItem(
//     //               value: e,
//     //               child: Text(e.present(t)),
//     //             ),
//     //           ),
//     //         ];
//     //       },
//     //     ),
//     //   ],
//     // );

//     switch (asyncProxies) {
//       case AsyncData(value: final groups):
//         if (groups.isEmpty) {
//           return Scaffold(
//             body: CustomScrollView(
//               slivers: [
//                 appBar,
//                 SliverFillRemaining(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(t.proxies.emptyProxiesMsg),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }

//         final group = groups.first;

//         return Scaffold(
//           body: CustomScrollView(
//             slivers: [
//               appBar,
//               SliverLayoutBuilder(
//                 builder: (context, constraints) {
//                   final width = constraints.crossAxisExtent;
//                   if (!PlatformUtils.isDesktop && width < 648) {
//                     return SliverPadding(
//                       padding: const EdgeInsets.only(bottom: 86),
//                       sliver: SliverList.builder(
//                         itemBuilder: (_, index) {
//                           final proxy = group.items[index];
//                           return ProxyTile(
//                             proxy,
//                             selected: group.selected == proxy.tag,
//                             onSelect: () async {
//                               if (selectActiveProxyMutation
//                                   .state.isInProgress) {
//                                 return;
//                               }
//                               selectActiveProxyMutation.setFuture(
//                                 notifier.changeProxy(group.tag, proxy.tag),
//                               );
//                             },
//                           );
//                         },
//                         itemCount: group.items.length,
//                       ),
//                     );
//                   }

//                   return SliverGrid.builder(
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: (width / 268).floor(),
//                       mainAxisExtent: 68,
//                     ),
//                     itemBuilder: (context, index) {
//                       final proxy = group.items[index];
//                       return ProxyTile(
//                         proxy,
//                         selected: group.selected == proxy.tag,
//                         onSelect: () async {
//                           if (selectActiveProxyMutation.state.isInProgress) {
//                             return;
//                           }
//                           selectActiveProxyMutation.setFuture(
//                             notifier.changeProxy(
//                               group.tag,
//                               proxy.tag,
//                             ),
//                           );
//                         },
//                       );
//                     },
//                     itemCount: group.items.length,
//                   );
//                 },
//               ),
//             ],
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () async => notifier.urlTest(group.tag),
//             tooltip: t.proxies.delayTestTooltip,
//             child: const Icon(FluentIcons.flash_24_filled),
//           ),
//         );

//       case AsyncError(:final error):
//         return Scaffold(
//           body: CustomScrollView(
//             slivers: [
//               appBar,
//               SliverErrorBodyPlaceholder(
//                 t.presentShortError(error),
//                 icon: null,
//               ),
//             ],
//           ),
//         );

//       case AsyncLoading():
//         return Scaffold(
//           body: CustomScrollView(
//             slivers: [
//               appBar,
//               const SliverLoadingBodyPlaceholder(),
//             ],
//           ),
//         );

//       // TODO: remove
//       default:
//         return const Scaffold();
//     }
//   }
// }

class ProxiesListPage extends HookConsumerWidget with PresLogger {
  const ProxiesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);

    final asyncProxies = ref.watch(proxiesOverviewNotifierProvider);
    final notifier = ref.watch(proxiesOverviewNotifierProvider.notifier);
    final sortBy = ref.watch(proxiesSortNotifierProvider);

    final selectActiveProxyMutation = useMutation(
      initialOnFailure: (error) =>
          CustomToast.error(t.presentShortError(error)).show(context),
    );

    final appBar = AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          // 返回按钮的逻辑
          Navigator.of(context).pop();
        },
      ),
      title: Text(t.proxies.pageTitle),
      actions: [
        PopupMenuButton<ProxiesSort>(
          initialValue: sortBy,
          onSelected: ref.read(proxiesSortNotifierProvider.notifier).update,
          icon: const Icon(FluentIcons.arrow_sort_24_regular),
          tooltip: t.proxies.sortTooltip,
          itemBuilder: (context) {
            return [
              ...ProxiesSort.values.map(
                (e) => PopupMenuItem(
                  value: e,
                  child: Text(e.present(t)),
                ),
              ),
            ];
          },
        ),
      ],
    );

    switch (asyncProxies) {
      case AsyncData(value: final groups):
        if (groups.isEmpty) {
          return Scaffold(
            appBar: appBar,
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(t.proxies.emptyProxiesMsg),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        final group = groups.first;

        return Scaffold(
          appBar: appBar,
          body: CustomScrollView(
            slivers: [
              SliverLayoutBuilder(
                builder: (context, constraints) {
                  final width = MediaQuery.of(context).size.shortestSide;
                  if (!PlatformUtils.isDesktop && width < 648) {
                    return SliverPadding(
                      padding: const EdgeInsets.only(bottom: 86),
                      sliver: SliverList.builder(
                        itemBuilder: (_, index) {
                          // if (index >= 1 && index <= 4) {
                          //   return Container();
                          // }
                          final proxy = group.items[index];
                          return ProxyTile(
                            proxy,
                            selected: group.selected == proxy.tag,
                            onSelect: () async {
                              if (selectActiveProxyMutation
                                  .state.isInProgress) {
                                return;
                              }
                              selectActiveProxyMutation.setFuture(
                                notifier.changeProxy(group.tag, proxy.tag),
                              );
                            },
                          );
                        },
                        itemCount: group.items.length,
                      ),
                    );
                  }

                  return SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (width / 268).floor(),
                      mainAxisExtent: 68,
                    ),
                    itemBuilder: (context, index) {
                      // if (index >= 1 && index <= 4) {
                      //   return Container();
                      // }
                      final proxy = group.items[index];
                      return ProxyTile(
                        proxy,
                        selected: group.selected == proxy.tag,
                        onSelect: () async {
                          if (selectActiveProxyMutation.state.isInProgress) {
                            return;
                          }
                          selectActiveProxyMutation.setFuture(
                            notifier.changeProxy(
                              group.tag,
                              proxy.tag,
                            ),
                          );
                        },
                      );
                    },
                    itemCount: group.items.length,
                  );
                },
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: selectActiveProxyMutation.state.isInProgress 
              ? null 
              : () async {
                // 显示加载中的对话框
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    // 3秒后自动关闭对话框
                    Future.delayed(const Duration(seconds: 3), () {
                      if (Navigator.canPop(context)) {
                        Navigator.of(context).pop();
                      }
                    });

                    return AlertDialog(
                      content: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircularProgressIndicator(),
                          const SizedBox(width: 20),
                          Text(t.proxies.delayTestTooltip),
                        ],
                      ),
                    );
                  },
                );
                
                try {
                  await notifier.urlTest(group.tag);
                } catch (e) {
                  // 可以在这里添加错误处理，但不显示额外的对话框
                }
              },
            tooltip: t.proxies.delayTestTooltip,
            child: const Icon(FluentIcons.flash_24_filled),
          ),
        );

      case AsyncError(:final error):
        return Scaffold(
          appBar: appBar,
          body: CustomScrollView(
            slivers: [
              SliverErrorBodyPlaceholder(
                t.presentShortError(error),
                icon: null,
              ),
            ],
          ),
        );

      case AsyncLoading():
        return Scaffold(
          appBar: appBar,
          body: CustomScrollView(
            slivers: [
              const SliverLoadingBodyPlaceholder(),
            ],
          ),
        );

      // TODO: remove
      default:
        return const Scaffold();
    }
  }
}
