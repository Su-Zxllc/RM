import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:reaeeman/core/analytics/analytics_controller.dart';
import 'package:reaeeman/core/localization/locale_extensions.dart';
import 'package:reaeeman/core/localization/locale_preferences.dart';
import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/model/region.dart';
import 'package:reaeeman/core/preferences/general_preferences.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocalePrefTile extends HookConsumerWidget {
  const LocalePrefTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);

    final locale = ref.watch(localePreferencesProvider);

    return ListTile(
      title: Text(t.settings.general.locale),
      subtitle: Text(locale.localeName),
      leading: const Icon(FluentIcons.local_language_24_regular),
      onTap: () async {
        final selectedLocale = await showDialog<AppLocale>(
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: Text(t.settings.general.locale),
              children: [
                AppLocale.en,
                AppLocale.zhCn,
              ]
                  .map(
                    (e) => RadioListTile(
                      title: Text(e.localeName),
                      value: e,
                      groupValue: locale,
                      onChanged: (value) {
                        // 延迟关闭对话框
                        Future.microtask(() {
                          Navigator.of(context).pop(value);
                        });
                      },
                    ),
                  )
                  .toList(),
            );
          },
        );
        if (selectedLocale != null && context.mounted) {
          await ref
              .read(localePreferencesProvider.notifier)
              .changeLocale(selectedLocale);
        }
      },
    );
  }
}

class RegionPrefTile extends HookConsumerWidget {
  const RegionPrefTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);

    final region = ref.watch(Preferences.region);

    return ListTile(
      title: Text(t.settings.general.region),
      subtitle: Text(region.present(t)),
      leading: const Icon(FluentIcons.globe_location_24_regular),
      onTap: () async {
        final selectedRegion = await showDialog<Region>(
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: Text(t.settings.general.region),
              children: Region.values
                  .map(
                    (e) => RadioListTile(
                      title: Text(e.present(t)),
                      value: e,
                      groupValue: region,
                      onChanged: Navigator.of(context).maybePop,
                    ),
                  )
                  .toList(),
            );
          },
        );
        if (selectedRegion != null) {
          await ref.read(Preferences.region.notifier).update(selectedRegion);
        }
      },
    );
  }
}

// class EnableAnalyticsPrefTile extends HookConsumerWidget {
//   const EnableAnalyticsPrefTile({
//     super.key,
//     this.onChanged,
//   });

//   final ValueChanged<bool>? onChanged;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final t = ref.watch(translationsProvider);

//     final enabled = ref.watch(analyticsControllerProvider).requireValue;

//     return SwitchListTile(
//       title: Text(t.settings.general.enableAnalytics),
//       subtitle: Text(
//         t.settings.general.enableAnalyticsMsg,
//         style: Theme.of(context).textTheme.bodySmall,
//       ),
//       secondary: const Icon(FluentIcons.bug_24_regular),
//       value: enabled,
//       onChanged: (value) async {
//         if (onChanged != null) {
//           return onChanged!(value);
//         }
//         if (enabled) {
//           await ref
//               .read(analyticsControllerProvider.notifier)
//               .disableAnalytics();
//         } else {
//           await ref
//               .read(analyticsControllerProvider.notifier)
//               .enableAnalytics();
//         }
//       },
//     );
//   }
// }
