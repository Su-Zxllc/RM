import 'package:flutter/material.dart';
import 'package:reaeeman/core/localization/locale_extensions.dart';
import 'package:reaeeman/gen/fonts.gen.dart';
import 'package:reaeeman/features/proxy/model/proxy_entity.dart';
import 'package:reaeeman/utils/custom_loggers.dart';
import 'package:reaeeman/utils/text_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProxyTile extends HookConsumerWidget with PresLogger {
  const ProxyTile(
    this.proxy, {
    super.key,
    required this.selected,
    required this.onSelect,
  });

  final ProxyItemEntity proxy;
  final bool selected;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
        proxy.name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontFamily: FontFamily.emoji),
      ),
      leading: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          width: 6,
          height: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: selected ? theme.colorScheme.primary : Colors.transparent,
          ),
        ),
      ),
      // subtitle: Text.rich(
      //   TextSpan(
      //     text: proxy.type.label,
      //     children: [
      //       if (proxy.selectedName != null)
      //         TextSpan(
      //           text: ' (${proxy.selectedName})',
      //           style: Theme.of(context).textTheme.bodySmall,
      //         ),
      //     ],
      //   ),
      // ),

      // trailing: proxy.urlTestDelay != 0
      //     ? Text(
      //         proxy.urlTestDelay > 65000 ? "×" : proxy.urlTestDelay.toString(),
      //         style: TextStyle(color: delayColor(context, proxy.urlTestDelay)),
      //       )
      //     : null,

      trailing: proxy.urlTestDelay != 0
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: delayColor(context, proxy.urlTestDelay),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )
          : null,
      selected: selected,
      onTap: onSelect,
      onLongPress: () async {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: SelectionArea(child: Text(proxy.name)),
            actions: [
              TextButton(
                onPressed: Navigator.of(context).pop,
                child: Text(MaterialLocalizations.of(context).closeButtonLabel),
              ),
            ],
          ),
        );
      },
      horizontalTitleGap: 4,
    );
  }

  Color delayColor(BuildContext context, int delay) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return switch (delay) {
        < 3000 => Colors.lightGreen,
        _ => Colors.redAccent
      };
    }
    return switch (delay) { < 3000 => Colors.green, _ => Colors.red };
  }
}
