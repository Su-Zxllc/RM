import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:reaeeman/core/localization/locale_extensions.dart';
import 'package:reaeeman/core/localization/locale_preferences.dart';
import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/model/constants.dart';
import 'package:reaeeman/core/router/router.dart';
import 'package:reaeeman/core/theme/app_theme.dart';
import 'package:reaeeman/core/theme/theme_preferences.dart';
import 'package:reaeeman/features/app_update/notifier/app_update_notifier.dart';
import 'package:reaeeman/features/connection/widget/connection_wrapper.dart';
import 'package:reaeeman/features/profile/notifier/profiles_update_notifier.dart';
import 'package:reaeeman/features/shortcut/shortcut_wrapper.dart';
import 'package:reaeeman/features/system_tray/widget/system_tray_wrapper.dart';
import 'package:reaeeman/features/window/widget/window_wrapper.dart';
import 'package:reaeeman/features/login/widget/login_page.dart';
import 'package:reaeeman/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sp_util/sp_util.dart';
import 'package:upgrader/upgrader.dart';
import 'package:flutter/scheduler.dart'; // Import the scheduler package

bool _debugAccessibility = false;

class App extends HookConsumerWidget with PresLogger {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final locale = ref.watch(localePreferencesProvider);
    final themeMode = ref.watch(themePreferencesProvider);
    final theme = AppTheme(themeMode, locale.preferredFontFamily);

    final upgrader = ref.watch(upgraderProvider);

    ref.listen(foregroundProfilesUpdateNotifierProvider, (_, __) {});

    // 判断是否登录
    // final isLogin = SpUtil.getString("token")?.isNotEmpty ?? false;

    // print('isLogin: $isLogin');

    return WindowWrapper(
      TrayWrapper(
        ShortcutWrapper(
          ConnectionWrapper(DynamicColorBuilder(
            builder:
                (ColorScheme? lightColorScheme, ColorScheme? darkColorScheme) {
              return MaterialApp.router(
                routerConfig: router,
                locale: locale.flutterLocale,
                supportedLocales: AppLocaleUtils.supportedLocales,
                localizationsDelegates: GlobalMaterialLocalizations.delegates,
                debugShowCheckedModeBanner: false,
                themeMode: themeMode.flutterThemeMode,
                theme: theme.lightTheme(lightColorScheme),
                darkTheme: theme.darkTheme(darkColorScheme),
                title: Constants.appName,
                builder: (context, child) {
                  // 根据 isLogin 的值决定是否显示登录页面
                  // if (!isLogin) {
                  //   return const LoginPage();
                  // }

                  // 如果已登录，则继续显示原本的子组件
                  child = UpgradeAlert(
                    upgrader: upgrader,
                    navigatorKey: router.routerDelegate.navigatorKey,
                    child: child ?? const SizedBox(),
                  );

                  // 其他代码保持不变
                  if (kDebugMode && _debugAccessibility) {
                    return AccessibilityTools(
                      checkFontOverflows: true,
                      child: child,
                    );
                  }
                  return child;
                },
                // builder: (context, child) {
                //   child = UpgradeAlert(
                //     upgrader: upgrader,
                //     navigatorKey: router.routerDelegate.navigatorKey,
                //     child: child ?? const SizedBox(),
                //   );
                //   if (kDebugMode && _debugAccessibility) {
                //     return AccessibilityTools(
                //       checkFontOverflows: true,
                //       child: child,
                //     );
                //   }
                //   return child;
                // },
              );
            },
          )),
        ),
      ),
    );
  }
}
