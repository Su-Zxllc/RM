import 'package:reaeeman/gen/fonts.gen.dart';
import 'package:reaeeman/gen/translations.g.dart';

extension AppLocaleX on AppLocale {
  String get preferredFontFamily =>
      this == AppLocale.fa ? FontFamily.shabnam : FontFamily.emoji;

  String get localeName => switch (flutterLocale.toString()) {
        "en" => "English",
        "zh" || "zh_CN" => "中文 (中国)",
        _ => "Unknown",
      };
}
