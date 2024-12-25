import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:reaeeman/core/analytics/analytics_controller.dart';
import 'package:reaeeman/core/http_client/dio_http_client.dart';
import 'package:reaeeman/core/localization/locale_preferences.dart';
import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/model/constants.dart';
import 'package:reaeeman/core/model/region.dart';
import 'package:reaeeman/core/preferences/general_preferences.dart';
import 'package:reaeeman/features/common/general_pref_tiles.dart';
import 'package:reaeeman/gen/assets.gen.dart';
import 'package:reaeeman/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:timezone_to_country/timezone_to_country.dart';
import 'package:http/http.dart' as http;

class IntroPage extends HookConsumerWidget with PresLogger {
  IntroPage({super.key});

  bool locationInfoLoaded = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);

    final isStarting = useState(false);
    if (!locationInfoLoaded) {
      autoSelectRegion(ref)
          .then((value) => loggy.debug("Auto Region selection finished!"));
      locationInfoLoaded = true;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: 160,
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Assets.images.logo.svg(),
                ),
              ),
            ),
            SliverCrossAxisConstrained(
              maxCrossAxisExtent: 368,
              child: MultiSliver(
                children: [
                  const SliverGap(32),
                  Center(
                    child: Text(
                      "ReaeemanVPN",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).colorScheme.primary,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  const SliverGap(16),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        "安全稳定的全球网络加速服务",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const SliverGap(64),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 24,
                    ),
                    child: FilledButton(
                      onPressed: () async {
                        if (isStarting.value) return;
                        isStarting.value = true;
                        if (!ref.read(analyticsControllerProvider).requireValue) {
                          loggy.info("disabling analytics per user request");
                          try {
                            await ref.read(analyticsControllerProvider.notifier).disableAnalytics();
                          } catch (error, stackTrace) {
                            loggy.error("could not disable analytics", error, stackTrace);
                          }
                        }
                        await ref.read(Preferences.introCompleted.notifier).update(true);
                      },
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: isStarting.value
                          ? SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            )
                          : Text(
                              t.intro.start,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> autoSelectRegion(WidgetRef ref) async {
    try {
      final countryCode = await TimeZoneToCountry.getLocalCountryCode();
      final regionLocale = _getRegionLocale(countryCode);
      loggy.debug(
        'Timezone Region: ${regionLocale.region} Locale: ${regionLocale.locale}',
      );
      await ref.read(Preferences.region.notifier).update(regionLocale.region);
      await ref
          .read(localePreferencesProvider.notifier)
          .changeLocale(regionLocale.locale);
      return;
    } catch (e) {
      loggy.warning(
        'Could not get the local country code based on timezone',
        e,
      );
    }

    try {
      final DioHttpClient client = DioHttpClient(
        timeout: const Duration(seconds: 2),
        userAgent:
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0",
        debug: true,
      );
      final response =
          await client.get<Map<String, dynamic>>('https://api.ip.sb/geoip/');

      if (response.statusCode == 200) {
        final jsonData = response.data!;
        final regionLocale =
            _getRegionLocale(jsonData['country_code']?.toString() ?? "");

        loggy.debug(
          'Region: ${regionLocale.region} Locale: ${regionLocale.locale}',
        );
        await ref.read(Preferences.region.notifier).update(regionLocale.region);
        await ref
            .read(localePreferencesProvider.notifier)
            .changeLocale(regionLocale.locale);
      } else {
        loggy.warning('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      loggy.warning('Could not get the local country code from ip');
    }
  }

  RegionLocale _getRegionLocale(String country) {
    switch (country.toUpperCase()) {
      case "IR":
        return RegionLocale(Region.ir, AppLocale.fa);
      case "CN":
        return RegionLocale(Region.cn, AppLocale.zhCn);
      case "RU":
        return RegionLocale(Region.ru, AppLocale.ru);
      case "AF":
        return RegionLocale(Region.af, AppLocale.fa);
      case "BR":
        return RegionLocale(Region.other, AppLocale.ptBr);
      case "TR":
        return RegionLocale(Region.other, AppLocale.tr);
      default:
        return RegionLocale(Region.other, AppLocale.en);
    }
  }
}

class RegionLocale {
  final Region region;
  final AppLocale locale;

  RegionLocale(this.region, this.locale);
}
