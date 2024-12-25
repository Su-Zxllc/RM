import 'dart:math';

import 'package:dartx/dartx.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reaeeman/core/app_info/app_info_provider.dart';
import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/model/failures.dart';
import 'package:reaeeman/core/router/router.dart';
import 'package:reaeeman/features/common/nested_app_bar.dart';
import 'package:reaeeman/features/home/widget/connection_button.dart';
import 'package:reaeeman/features/home/widget/empty_profiles_home_body.dart';
import 'package:reaeeman/features/profile/notifier/active_profile_notifier.dart';
import 'package:reaeeman/features/profile/widget/profile_tile.dart';
import 'package:reaeeman/features/proxy/active/active_proxy_delay_indicator.dart';
import 'package:reaeeman/features/proxy/active/active_proxy_footer.dart';
import 'package:reaeeman/features/subscribe/crisp_page.dart';
import 'package:reaeeman/features/subscribe/widget/order_page.dart';
import 'package:reaeeman/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sp_util/sp_util.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart' as prefs;

class CenterPage extends ConsumerWidget {
  const CenterPage({Key? key}) : super(key: key);

  int _calculateRemainingDays(int timestamp) {
    DateTime expiredDate =
        DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    DateTime currentDate = DateTime.now();
    return expiredDate.difference(currentDate).inDays + 1;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    TextEditingController oldPasswordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();

    final subscribe = SpUtil.getObject('subscribe') as Map<String, dynamic>;

    print('用户订阅: $subscribe');

    double usedData =
        (subscribe['u'].toDouble() + subscribe['d'].toDouble() as double);
    String usedDataStr;

    if (usedData < 1024 * 1024 * 1024) {
      usedData /= 1024 * 1024;
      usedDataStr = "${usedData.toStringAsFixed(2)} MB";
    } else {
      usedData /= 1024 * 1024 * 1024;
      usedDataStr = "${usedData.toStringAsFixed(2)} GB";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(t.center.pageTitle),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40.0, // 你可以调整这个值来改变间隔的大小
            ),
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 40.0,
              ),
              radius: 30.0,
            ),
            SizedBox(
              height: 20.0, // 你可以调整这个值来改变间隔的大小
            ),
            Text(
              SpUtil.getObject('user')?['email'] as String,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0, // 你可以调整这个值来改变间隔的大小
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .surfaceVariant
                      .withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context)
                        .colorScheme
                        .outlineVariant
                        .withOpacity(0.2),
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    subscribe['plan'] != null
                        ? Row(
                            children: [
                              Icon(
                                FluentIcons.checkmark_circle_24_regular,
                                color: Theme.of(context).colorScheme.primary,
                                size: 20,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                t.center.mySubscribeWithName
                                    .call(name: subscribe['plan']['name']),
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Icon(
                                FluentIcons.error_circle_24_regular,
                                color: Theme.of(context).colorScheme.error,
                                size: 20,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                t.center.noSubscribe,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ],
                          ),
                    SizedBox(height: 12.0),
                    subscribe['expired_at'] == null ||
                            subscribe['expired_at'] == 0
                        ? Row(
                            children: [
                              Icon(
                                FluentIcons.error_circle_24_regular,
                                color: Theme.of(context).colorScheme.error,
                                size: 20,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                t.center.expired,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Icon(
                                FluentIcons.timer_24_regular,
                                color: Theme.of(context).colorScheme.primary,
                                size: 20,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                t.center.remainingDays.call(
                                    days: _calculateRemainingDays(
                                            subscribe['expired_at'] as int)
                                        .toString()),
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                    SizedBox(height: 12.0),
                    subscribe['transfer_enable'] == 0
                        ? Container()
                        : Row(
                            children: [
                              Icon(
                                FluentIcons.data_trending_24_regular,
                                color: Theme.of(context).colorScheme.primary,
                                size: 20,
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: Text(
                                  t.center.usedTraffic.call(
                                    used: usedDataStr,
                                    total: (subscribe['transfer_enable'] != null
                                                ? subscribe['transfer_enable']
                                                    as int
                                                : 0) >
                                            9999 * 1024 * 1024 * 1024
                                        ? '∞'
                                        : (subscribe['transfer_enable'] /
                                                1024 /
                                                1024 /
                                                1024)
                                            .toStringAsFixed(2),
                                  ),
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(t.center.changePassword),
                          content: Container(
                            height: 150.0,
                            width: 300.0,
                            child: ListView(
                              children: <Widget>[
                                TextField(
                                  controller: oldPasswordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: t.center.oldPassword,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                TextField(
                                  controller: newPasswordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: t.center.newPassword,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text(t.center.cancel),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            ElevatedButton(
                              child: Text(t.center.confirm),
                              onPressed: () {
                                _changePassword(
                                    context,
                                    oldPasswordController.text,
                                    newPasswordController.text);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    foregroundColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FluentIcons.password_24_regular),
                      SizedBox(width: 8),
                      Text(
                        t.center.changePassword,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push('/order-list');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    foregroundColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FluentIcons.document_24_regular),
                      SizedBox(width: 8),
                      Text(
                        t.center.myOrder,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push('/invite');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    foregroundColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FluentIcons.gift_24_regular),
                      SizedBox(width: 8),
                      Text(
                        t.center.inviteReward,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    // 清除 SpUtil 中的数据
                    SpUtil.remove('token');
                    SpUtil.remove('user');
                    SpUtil.remove('login');

                    // 清除 SharedPreferences 中的数据
                    final sharedPrefs =
                        await prefs.SharedPreferences.getInstance();
                    await sharedPrefs.remove('token');
                    await sharedPrefs.remove('isLoggedIn');

                    // Clear navigation stack and redirect to login
                    final router = GoRouter.of(context);
                    router.pushReplacement('/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.errorContainer,
                    foregroundColor:
                        Theme.of(context).colorScheme.onErrorContainer,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FluentIcons.sign_out_24_regular),
                      SizedBox(width: 8),
                      Text(
                        t.center.logout,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _changePassword(
      BuildContext context, String oldPassword, String newPassword) async {
    final baseUrlObj = SpUtil.getObject('baseUrl');
    if (baseUrlObj == null || baseUrlObj['api'] == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('服务器地址未设置')),
      );
      return;
    }

    final baseUrl = baseUrlObj['api'] as String;
    final token = SpUtil.getString('token');
    if (token == null || token.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('请先登录')),
      );
      return;
    }

    try {
      final pwdResponse = await http.post(
        Uri.parse(baseUrl + '/api/v1/user/changePassword'),
        headers: {'Authorization': token!},
        body: {
          'old_password': oldPassword,
          'new_password': newPassword,
        },
      );

      if (pwdResponse.statusCode == 200) {
        final data = json.decode(pwdResponse.body)['data'] as bool;
        if (data == true) {
          Get.snackbar('修改密码', '修改密码成功');

          Navigator.of(context).pop();

          SpUtil.remove('token');

          SpUtil.remove('user');

          SpUtil.remove('login');

          context.go('/login');
        } else {
          Get.snackbar('修改密码', '修改密码失败');
        }
      } else {
        // Handle login failure
      }
    } catch (e) {
      // Handle network request error
    }
  }
}
