import 'dart:convert';
import 'dart:io';

import 'package:dartx/dartx.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:reaeeman/core/app_info/app_info_provider.dart';
import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/model/failures.dart';
import 'package:reaeeman/core/router/router.dart';
import 'package:reaeeman/features/common/nested_app_bar.dart';
import 'package:reaeeman/features/home/widget/connection_button.dart';
import 'package:reaeeman/features/home/widget/empty_profiles_home_body.dart';
import 'package:reaeeman/features/login/widget/login_page.dart';
import 'package:reaeeman/features/profile/notifier/active_profile_notifier.dart';
import 'package:reaeeman/features/profile/widget/profile_tile.dart';
import 'package:reaeeman/features/proxy/active/active_proxy_delay_indicator.dart';
import 'package:reaeeman/features/proxy/active/active_proxy_footer.dart';
import 'package:reaeeman/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:sp_util/sp_util.dart';
import 'package:http/http.dart' as http;
import 'package:sliver_tools/sliver_tools.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reaeeman/features/profile/details/profile_details_notifier.dart';
import 'package:lottie/lottie.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    final hasAnyProfile = ref.watch(hasAnyProfileProvider);
    final activeProfile = ref.watch(activeProfileProvider);

    // // 判断是否登录
    // final isLogin = SpUtil.getString("token")?.isNotEmpty ?? false;

    // print('isLogin: $isLogin');

    // if (isLogin == false) {
    //   // GoRouter.of(context).replace('/login');
    //   // GoRouter.of(context).pushNamed(const LoginRoute().location);

    //   // GoRoute(
    //   //   name: 'login',
    //   //   path: '/login',
    //   //   builder: (BuildContext context, GoRouterState state) {
    //   //     return LoginPage();
    //   //   },
    //   // );

    //   context.go('/login');
    //   // context.goNamed('Login');

    //   // return Container();
    // }

    // getSubscribe(context, ref);

    useEffect(() {
      getSubscribe(context, ref);
      return null; // 返回一个可选的清理函数
    }, const []); //

    return Scaffold(
      // backgroundColor: const Color.fromARGB(245, 245, 245, 245), // 设置背景色为灰色
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              NestedAppBar(
                title: Text.rich(
                  TextSpan(
                    children: [
                      // TextSpan(text: t.general.appTitle),
                      TextSpan(text: 'ReaeemanVPN'),
                      // const TextSpan(text: " "),
                      // const WidgetSpan(
                      //   child: AppVersionLabel(),
                      //   alignment: PlaceholderAlignment.middle,
                      // ),
                    ],
                  ),
                ),
                actions: [
                  // IconButton(
                  //   onPressed: () => const QuickSettingsRoute().push(context),
                  //   icon: const Icon(FluentIcons.options_24_filled),
                  //   tooltip: t.config.quickSettings,
                  // ),
                  // IconButton(
                  //   onPressed: () => const ProxiesListRoute().push(context),
                  //   icon: const Icon(FluentIcons.options_24_filled),
                  //   tooltip: '代理',
                  // ),
                  IconButton(
                    onPressed: () => const NoticeRoute().push(context),
                    icon: const Icon(FluentIcons.alert_on_24_regular),
                    tooltip: '公告',
                  ),
                  // IconButton(
                  //   onPressed: () => const AddProfileRoute().push(context),
                  //   icon: const Icon(FluentIcons.add_circle_24_filled),
                  //   tooltip: t.profile.add.buttonText,
                  // ),
                ],
              ),
              switch (activeProfile) {
                AsyncData(value: final profile?) => MultiSliver(
                    children: [
                      FutureBuilder<String>(
                        future: getNotice(),
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const SliverToBoxAdapter(
                                child: SizedBox.shrink());
                          } else if (snapshot.hasError ||
                              !snapshot.hasData ||
                              snapshot.data == '请先登录' ||
                              snapshot.data == '正在加载...' ||
                              snapshot.data == '加载失败' ||
                              snapshot.data == '网络错误' ||
                              snapshot.data == '暂无公告') {
                            return const SliverToBoxAdapter(
                                child: SizedBox.shrink());
                          } else {
                            return SliverToBoxAdapter(
                              child: GestureDetector(
                                onTap: () {
                                  context.push('/notice');
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  color: Colors.blue,
                                  child: Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.announcement,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          snapshot.data!,
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                      ),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Stack(
                          children: <Widget>[
                            // Lottie.asset('assets/images/animation_map.json',
                            //     width: MediaQuery.of(context).size.width,
                            //     height:
                            //         MediaQuery.of(context).size.height * 0.7,
                            //     fit: BoxFit.fitHeight),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ConnectionButton(),
                                      // ActiveProxyDelayIndicator(),
                                    ],
                                  ),
                                ),
                                if (MediaQuery.sizeOf(context).width < 840)
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: ActiveProxyFooter(),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                AsyncData() => switch (hasAnyProfile) {
                    AsyncData(value: true) =>
                      const EmptyActiveProfileHomeBody(),
                    _ => const EmptyProfilesHomeBody(),
                  },
                AsyncError(:final error) =>
                  SliverErrorBodyPlaceholder(t.presentShortError(error)),
                _ => const SliverToBoxAdapter(),
              },
            ],
          ),
        ],
      ),
    );
  }

  Future<String> getNotice() async {
    await SpUtil.getInstance();

    final token = await SpUtil.getString("token");
    if (token == null || token.isEmpty) {
      return '请先登录';
    }

    final baseUrlObj = await SpUtil.getObject('baseUrl');
    if (baseUrlObj == null || baseUrlObj['api'] == null) {
      return '正在加载...';
    }

    final baseUrl = baseUrlObj['api'] as String;

    try {
      var response = await http.get(
        Uri.parse(baseUrl + '/api/v1/user/notice/fetch'),
        headers: {'Authorization': token},
      );
      if (response.statusCode == 200) {
        print(response.body);
        final decodedData = json.decode(response.body) as Map<String, dynamic>;
        if ((decodedData['data'] as List).isNotEmpty) {
          final title = decodedData['data'][0]['title'] as String;
          return title;
        } else {
          return '暂无公告';
        }
      } else {
        return '加载失败';
      }
    } catch (e) {
      print('Error fetching notice: $e');
      return '网络错误';
    }
  }

  Future<void> getSubscribe(BuildContext context, WidgetRef ref) async {
    // Remove ref parameter
    try {
      await SpUtil.getInstance();

      final token = await SpUtil.getString("token");

      // 判断是否登录
      final isLogin = await SpUtil.getString("token")?.isNotEmpty ?? false;

      print('isLogin: ${isLogin}');

      if (!isLogin) {
        context.go('/login');
      } else {
        final baseUrl = await SpUtil.getObject('baseUrl')?['api'] as String;

        final response = await http.get(
          Uri.parse(baseUrl + '/api/v1/user/getSubscribe'),
          headers: {'Authorization': token!},
        );
        if (response.statusCode == 200) {
          final decodedData =
              json.decode(response.body) as Map<String, dynamic>;
          print('获取用户是否有订阅: ${decodedData['data']}');
          // final subscribeUrl = decodedData['data']['subscribe_url'] as String;
          // print(subscribeUrl);

          SpUtil.putInt(
              'expired', (decodedData['data']['expired_at'] as int?) ?? 0);

          SpUtil.putObject(
              'subscribe', decodedData['data'] as Map<String, dynamic>);

          final appUpdateResponse = await http.get(
            Uri.parse(baseUrl +
                '/api/v1/client/app/getVersion?token=${decodedData['data']['token']}'),
            headers: {'Authorization': token!},
          );

          if (appUpdateResponse.statusCode == 200) {
            final appUpdateDecodedData =
                json.decode(appUpdateResponse.body) as Map<String, dynamic>;

            final appInfo = ref.read(appInfoProvider);
            final String appVersionLabel = appInfo.requireValue.presentVersion;
            final RegExp versionExp = RegExp(r'\d+\.\d+\.\d+');
            final Match? versionMatch = versionExp.firstMatch(appVersionLabel);
            final String version =
                versionMatch != null ? versionMatch.group(0)! : '';

            final t = ref.watch(translationsProvider);

            print('appVersionLabel: $appVersionLabel');
            print('version: $version');

            if (Platform.isAndroid &&
                appUpdateDecodedData['data'] != null &&
                appUpdateDecodedData['data'].containsKey('android_version')
                    as bool &&
                appUpdateDecodedData['data']['android_version'].toString() !=
                    version) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(t.update.title),
                    content: Text(t.update.message),
                    actions: <Widget>[
                      TextButton(
                        child: Text(t.update.action.update),
                        onPressed: () async {
                          String url = appUpdateDecodedData['data']
                              ['android_download_url'] as String;
                          if (await canLaunch(url)) {
                            await launch(
                              url,
                              enableJavaScript: true,
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      TextButton(
                        child: Text(t.update.action.later),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }

            if (Platform.isMacOS &&
                appUpdateDecodedData['data'] != null &&
                appUpdateDecodedData['data'].containsKey('macos_version')
                    as bool &&
                appUpdateDecodedData['data']['macos_version'].toString() !=
                    version) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(t.update.title),
                    content: Text(t.update.message),
                    actions: <Widget>[
                      TextButton(
                        child: Text(t.update.action.update),
                        onPressed: () async {
                          String url = appUpdateDecodedData['data']
                              ['macos_download_url'] as String;
                          if (await canLaunch(url)) {
                            await launch(
                              url,
                              enableJavaScript: true,
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      TextButton(
                        child: Text(t.update.action.later),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }

            if (Platform.isWindows &&
                appUpdateDecodedData['data'] != null &&
                appUpdateDecodedData['data'].containsKey('windows_version')
                    as bool &&
                appUpdateDecodedData['data']['windows_version'].toString() !=
                    version) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(t.update.title),
                    content: Text(t.update.message),
                    actions: <Widget>[
                      TextButton(
                        child: Text(t.update.action.update),
                        onPressed: () async {
                          String url = appUpdateDecodedData['data']
                              ['windows_download_url'] as String;
                          if (await canLaunch(url)) {
                            await launch(
                              url,
                              enableJavaScript: true,
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      TextButton(
                        child: Text(t.update.action.later),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          }

          final String id;
          if (decodedData['data'] != null) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return Dialog(
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      new CircularProgressIndicator(),
                      new Text("加载中..."),
                    ],
                  ),
                );
              },
            );

            // String id = decodedData['data']['subscribe_url'] as String;
            final subscribeUrl = decodedData['data']['subscribe_url'] as String;
            final id = 'new' as String;
            final provider = profileDetailsNotifierProvider(id);
            final notifier = ref.watch(provider.notifier);

            final isSubscribe =
                await SpUtil.getBool('isSubscribe') ?? false as bool;

            final subscribe =
                await SpUtil.getObject('subscribe') as Map<String, dynamic>;

            if (isSubscribe != false) {
              notifier.delete();
            }

            if (subscribe['plan'] != null) {
              notifier.setField(
                name: 'ReaeemanVPN',
                url: subscribeUrl,
                updateInterval: Some(1),
              );

              notifier.save();
              await SpUtil.putBool('isSubscribe', true);
            }

            // if (isSubscribe == false && subscirbe['plan'] != null) {
            //   notifier.setField(
            //     name: 'ReaeemanVPN',
            //     url: subscribeUrl,
            //     updateInterval: Some(1),
            //   );

            //   notifier.save();
            //   // return;

            //   await SpUtil.putBool('isSubscribe', true);
            // }

            Navigator.of(context, rootNavigator: true).pop();
          } else {
            throw '获取配置文件失败：plan_id 为空';
          }
        } else {
          throw '请求失败：状态码 ${response.statusCode}';
        }
      }
    } catch (e) {
      throw '网络请求错误：$e';
    }
  }

  // Future<void> getSubscribe() async {
  //   try {
  //     await SpUtil.getInstance();

  //     final token = SpUtil.getString("token");

  //     final response = await http.get(
  //       Uri.parse('https://ayouok.online/api/v1/user/getSubscribe'),
  //       headers: {'Authorization': token!},
  //     );
  //     if (response.statusCode == 200) {
  //       final decodedData = json.decode(response.body) as Map<String, dynamic>;
  //       print('获取用户是否有订阅: ${decodedData['data']}');
  //     } else {
  //       throw '请求失败：状态码 ${response.statusCode}';
  //     }
  //   } catch (e) {
  //     throw '网络请求错误：$e';
  //   }
  // }
}

class AppVersionLabel extends HookConsumerWidget {
  const AppVersionLabel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    final theme = Theme.of(context);

    final version = ref.watch(appInfoProvider).requireValue.presentVersion;
    if (version.isBlank) return const SizedBox();

    return Semantics(
      label: t.about.version,
      button: false,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 1,
        ),
        child: Text(
          version,
          textDirection: TextDirection.ltr,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSecondaryContainer,
          ),
        ),
      ),
    );
  }
}
