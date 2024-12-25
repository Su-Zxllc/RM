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

// class SubscribePage extends HookConsumerWidget {
//   const SubscribePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final t = ref.watch(translationsProvider);
//     final hasAnyProfile = ref.watch(hasAnyProfileProvider);
//     final activeProfile = ref.watch(activeProfileProvider);

//     // 在页面加载完成后发送网络请求
//     WidgetsBinding.instance?.addPostFrameCallback((_) {
//       makeNetworkRequest();
//     });

//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           CustomScrollView(
//             slivers: [
//               NestedAppBar(
//                 title: Text.rich(
//                   TextSpan(
//                     children: [
//                       // TextSpan(text: t.general.appTitle),
//                       TextSpan(text: '订阅'),
//                       const TextSpan(text: " "),
//                       // const WidgetSpan(
//                       //   child: AppVersionLabel(),
//                       //   alignment: PlaceholderAlignment.middle,
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//               switch (activeProfile) {
//                 AsyncData(value: final profile?) => MultiSliver(
//                     children: [
//                       ProfileTile(profile: profile, isMain: true),
//                       SliverFillRemaining(
//                         hasScrollBody: false,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Expanded(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   ConnectionButton(),
//                                   ActiveProxyDelayIndicator(),
//                                 ],
//                               ),
//                             ),
//                             if (MediaQuery.sizeOf(context).width < 840)
//                               const ActiveProxyFooter(),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 AsyncData() => switch (hasAnyProfile) {
//                     AsyncData(value: true) =>
//                       const EmptyActiveProfileHomeBody(),
//                     _ => const EmptyProfilesHomeBody(),
//                   },
//                 AsyncError(:final error) =>
//                   SliverErrorBodyPlaceholder(t.presentShortError(error)),
//                 _ => const SliverToBoxAdapter(),
//               },
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> makeNetworkRequest() async {
//     try {
//       await SpUtil.getInstance();

//       final token = SpUtil.getString("token");

//       final planResponse = await http.get(
//         Uri.parse('https://ayouok.online/api/v1/user/plan/fetch'),
//         headers: {
//           'Authorization': token!,
//         },
//       );

//       if (planResponse.statusCode == 200) {
//         print(planResponse.body);
//       } else {
//         // Handle plan fetch error
//       }

//       // Process the response here
//     } catch (e) {
//       // Handle any errors that occur during the network request
//     }
//   }
// }

class SubscribePage extends ConsumerWidget {
  const SubscribePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(t.subscribe.pageTitle),
      ),
      body: FutureBuilder(
        future: makeNetworkRequest(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('发生错误：${snapshot.error.toString()}'));
          } else if (snapshot.hasData) {
            final data = snapshot.data! as Map<String, dynamic>;
            final plans = data['data'] as List<dynamic>;
            final orders = data['order'] as List<dynamic>;
            final hasUnpaidOrder = orders.any((order) => order['status'] == 0);
            final unpaidOrders =
                orders.where((order) => order['status'] == 0).toList();

            return Column(
              children: [
                if (hasUnpaidOrder)
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () => navigateToOrderDetails(
                          context,
                          unpaidOrders[0]['trade_no'] as String,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          color: Colors.yellow,
                          child: const Text(
                            '您有未支付的订单，点击查看详情',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //       horizontal: 4.0, vertical: 4.0),
                //   child: GestureDetector(
                //     onTap: () => navigateToOrderDetails(context),
                //     child: Container(
                //       padding: const EdgeInsets.all(8.0),
                //       color: Colors.yellow,
                //       child: const Text(
                //         '您有未支付的订单，点击查看详情',
                //         style: TextStyle(color: Colors.red),
                //       ),
                //     ),
                //   ),
                // ),
                Expanded(
                  child: ListView.builder(
                    itemCount: plans.length,
                    itemBuilder: (context, index) {
                      final plan = plans[index] as Map<String, dynamic>;
                      return Card(
                        elevation: 2,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Theme.of(context).colorScheme.surface,
                            border: Border.all(
                              color: Theme.of(context)
                                  .colorScheme
                                  .outline
                                  .withOpacity(0.1),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(16)),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surfaceVariant
                                      .withOpacity(0.3),
                                ),
                                child: Text(
                                  plan['name'] as String,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Html(
                                  data: plan['content'] as String,
                                  style: {
                                    "body": Style(
                                      margin: Margins.zero,
                                      padding: HtmlPaddings.zero,
                                      fontSize: FontSize(14),
                                      lineHeight: LineHeight.number(1.5),
                                    ),
                                    "li": Style(
                                      margin: Margins.only(bottom: 8),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
                                    ),
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                child: ElevatedButton(
                                  onPressed: () {
                                    _showPeriodSelectionBottomSheet(
                                        context, plan, ref);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    minimumSize:
                                        const Size(double.infinity, 48),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    elevation: 0,
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .secondaryContainer,
                                    foregroundColor: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                                  child: Text(
                                    t.subscribe.buyNow,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
            // return ListView.builder(
            //   itemCount: plans.length,
            //   itemBuilder: (context, index) {
            //     final plan = plans[index] as Map<String, dynamic>;
            //     return Card(
            //       elevation: 4,
            //       margin: const EdgeInsets.all(8),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           ListTile(
            //             title: Text(plan['name'] as String),
            //             subtitle: Html(
            //               data: plan['content'] as String,
            //               style: {
            //                 ".custom-text": Style(
            //                   fontSize: FontSize(18),
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               },
            //             ),
            //           ),
            //           SizedBox(
            //             width: double.infinity,
            //             child: Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: ElevatedButton(
            //                 onPressed: () {
            //                   _showPeriodSelectionBottomSheet(context, plan, ref);
            //                 },
            //                 child: const Text('立即购买'),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            // );
          } else {
            return const Center(child: Text('暂无数据'));
          }
        },
      ),
      floatingActionButton: PlatformUtils.isDesktop ||
              SpUtil.getObject('baseUrl')?['crisp'] == null
          ? Container()
          : FloatingActionButton(
              onPressed: () {
                // Get.to(const LoginPage());
                // Get.to(const CrispPage());
                context.push('/crisp');
              },
              tooltip: '联系客服',
              child: const Icon(Icons.support_agent),
            ),
      // floatingActionButton: PlatformUtils.isDesktop
      //     ? Container()
      //     : FloatingActionButton(
      //         onPressed: () {
      //           // Get.to(const LoginPage());
      //           // Get.to(const CrispPage());
      //           context.push('/crisp');
      //         },
      //         tooltip: '联系客服',
      //         child: const Icon(Icons.support_agent),
      //       ),
    );
  }

  Future<Map<String, dynamic>> makeNetworkRequest() async {
    try {
      await SpUtil.getInstance();

      final token = SpUtil.getString("token");

      final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

      final response = await http.get(
        Uri.parse(baseUrl + '/api/v1/user/plan/fetch'),
        headers: {'Authorization': token!},
      );
      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body) as Map<String, dynamic>;
        print(decodedData['data']);

        final order = await http.get(
          Uri.parse(baseUrl + '/api/v1/user/order/fetch'),
          headers: {'Authorization': token},
        );

        if (order.statusCode == 200) {
          final decodedOrder = json.decode(order.body) as Map<String, dynamic>;

          decodedData['order'] = decodedOrder['data'];

          return decodedData;
        } else {
          throw '请求失败：状态码 ${order.statusCode}';
        }
      } else {
        throw '请求失败：状态码 ${response.statusCode}';
      }
    } catch (e) {
      throw '网络请求错误：$e';
    }
  }

  void navigateToOrderDetails(BuildContext context, String tradeNo) {
    // 在这里添加导航到订单详情页面的代码
    // 例如：Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailsPage()));

    print('订单号');
    print(tradeNo);

    SpUtil.putString('tradeNo', tradeNo);

    GoRouter.of(context).push('/order');
  }

  void _showPeriodSelectionBottomSheet(
      BuildContext context, Map<String, dynamic> plan, WidgetRef ref) {
    final t = ref.read(translationsProvider);
    final Map<String, dynamic> plans = {
      '月付': 'month_price',
      '季付': 'quarter_price',
      '半年付': 'half_year_price',
      '年付': 'year_price',
      '两年付': 'two_year_price',
      '三年付': 'three_year_price',
      '一次性': 'onetime_price',
      '流量重置包': 'reset_price',
    };
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 4,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      childAspectRatio: 1.5, // 调整按钮的高度
                      children: plans.entries
                          .where((entry) => plan[entry.value] != null)
                          .map((entry) => _buildButton(
                                context,
                                entry.key,
                                plan[entry.value] as int?,
                                isSelected:
                                    plan['selected_period'] == entry.value,
                                onTap: () {
                                  setState(() {
                                    plan['selected_period'] = entry.value;
                                  });
                                  // 不关闭弹出框
                                  _handlePurchase(
                                      context, plan[entry.value] as int? ?? 0);
                                },
                              ))
                          .toList(),
                    ),
                    // GridView.count(
                    //   shrinkWrap: true,
                    //   crossAxisCount: 3,
                    //   mainAxisSpacing: 8.0,
                    //   crossAxisSpacing: 8.0,
                    //   childAspectRatio: 1.5, // 调整按钮的高度
                    //   children: [
                    //     _buildButton(
                    //       context,
                    //       '月付',
                    //       plan['month_price'] as int?,
                    //       isSelected: plan['selected_period'] == 'month_price',
                    //       onTap: () {
                    //         setState(() {
                    //           plan['selected_period'] = 'month_price';
                    //         });
                    //         // 不关闭弹出框
                    //         _handlePurchase(
                    //             context, plan['month_price'] as int? ?? 0);
                    //       },
                    //     ),
                    //     _buildButton(
                    //       context,
                    //       '季付',
                    //       plan['quarter_price'] as int?,
                    //       isSelected:
                    //           plan['selected_period'] == 'quarter_price',
                    //       onTap: () {
                    //         setState(() {
                    //           plan['selected_period'] = 'quarter_price';
                    //         });
                    //         // 不关闭弹出框
                    //         _handlePurchase(
                    //             context, plan['quarter_price'] as int? ?? 0);
                    //       },
                    //     ),
                    //     _buildButton(
                    //       context,
                    //       '半年付',
                    //       plan['half_year_price'] as int?,
                    //       isSelected:
                    //           plan['selected_period'] == 'half_year_price',
                    //       onTap: () {
                    //         setState(() {
                    //           plan['selected_period'] = 'half_year_price';
                    //         });
                    //         // 不关闭弹出框
                    //         _handlePurchase(
                    //             context, plan['half_year_price'] as int? ?? 0);
                    //       },
                    //     ),
                    //     _buildButton(
                    //       context,
                    //       '年付',
                    //       plan['year_price'] as int?,
                    //       isSelected: plan['selected_period'] == 'year_price',
                    //       onTap: () {
                    //         setState(() {
                    //           plan['selected_period'] = 'year_price';
                    //         });
                    //         // 不关闭弹出框
                    //         _handlePurchase(
                    //             context, plan['year_price'] as int? ?? 0);
                    //       },
                    //     ),
                    //     _buildButton(
                    //       context,
                    //       '两年付',
                    //       plan['two_year_price'] as int?,
                    //       isSelected:
                    //           plan['selected_period'] == 'two_year_price',
                    //       onTap: () {
                    //         setState(() {
                    //           plan['selected_period'] = 'two_year_price';
                    //         });
                    //         // 不关闭弹出框
                    //         _handlePurchase(
                    //             context, plan['two_year_price'] as int? ?? 0);
                    //       },
                    //     ),
                    //     _buildButton(
                    //       context,
                    //       '三年付',
                    //       plan['three_year_price'] as int?,
                    //       isSelected:
                    //           plan['selected_period'] == 'three_year_price',
                    //       onTap: () {
                    //         setState(() {
                    //           plan['selected_period'] = 'three_year_price';
                    //         });
                    //         // 不关闭弹出框
                    //         _handlePurchase(
                    //             context, plan['three_year_price'] as int? ?? 0);
                    //       },
                    //     ),
                    //     _buildButton(
                    //       context,
                    //       '一次性',
                    //       plan['onetime_price'] as int?,
                    //       isSelected:
                    //           plan['selected_period'] == 'onetime_price',
                    //       onTap: () {
                    //         setState(() {
                    //           plan['selected_period'] = 'onetime_price';
                    //         });
                    //         // 不关闭弹出框
                    //         _handlePurchase(
                    //             context, plan['onetime_price'] as int? ?? 0);
                    //       },
                    //     ),
                    //     _buildButton(
                    //       context,
                    //       '流量重置包',
                    //       plan['reset_price'] as int?,
                    //       isSelected: plan['selected_period'] == 'reset_price',
                    //       onTap: () {
                    //         setState(() {
                    //           plan['selected_period'] = 'reset_price';
                    //         });
                    //         // 不关闭弹出框
                    //         _handlePurchase(
                    //             context, plan['reset_price'] as int? ?? 0);
                    //       },
                    //     ),
                    //   ],
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0), // 添加上边距
                      child: Align(
                        alignment: Alignment.centerRight, // 靠右显示
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), // 更圆润的按钮
                            ),
                            padding: const EdgeInsets.all(8), // 更大的内边距
                            backgroundColor: Colors.blue, // 按钮颜色
                            minimumSize: const Size(120, 40), // 按钮最小尺寸
                          ),
                          onPressed: () {
                            Navigator.of(context).pop(); // 关闭当前弹出框
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                String couponCode = '';
                                return Container(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Center(
                                        child: Container(
                                          width: 40,
                                          height: 4,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(2.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16.0),
                                      Text(
                                        '有优惠卷吗？',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 16.0),
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: '输入优惠卷码',
                                        ),
                                        onChanged: (value) {
                                          couponCode = value;
                                        },
                                      ),
                                      SizedBox(height: 16.0),
                                      Text(
                                        '如果优惠卷有效，下单时将会被自动应用',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 16.0),
                                      Center(
                                        child: ElevatedButton(
                                          child: Text(t.subscribe.createOrder),
                                          onPressed: () async {
                                            try {
                                              _saveOrder(
                                                context,
                                                plan['id'] as int?,
                                                plan['selected_period']
                                                    as String,
                                                couponCode,
                                              );
                                            } catch (e) {
                                              // 网络错误，处理错误
                                              print('Caught error: $e');
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            t.subscribe.subscribeNow,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.bottomRight,
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: ElevatedButton(
                    //       style: ElevatedButton.styleFrom(
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(20), // 更圆润的按钮
                    //         ),
                    //         padding: const EdgeInsets.all(8), // 更大的内边距
                    //         backgroundColor: Colors.blue, // 按钮颜色
                    //         minimumSize: const Size(120, 40), // 按钮最小尺寸
                    //       ),
                    //       onPressed: () {
                    //         showDialog(
                    //           context: context,
                    //           builder: (BuildContext context) {
                    //             String couponCode = '';
                    //             return AlertDialog(
                    //               title: Text('输入优惠码'),
                    //               content: TextField(
                    //                 decoration: InputDecoration(
                    //                   hintText: '如有，请输入优惠码',
                    //                 ),
                    //                 onChanged: (value) {
                    //                   couponCode = value;
                    //                 },
                    //               ),
                    //               actions: <Widget>[
                    //                 ElevatedButton(
                    //                   child: Text('创建订单'),
                    //                   onPressed: () async {
                    //                     try {
                    //                       _saveOrder(
                    //                         context,
                    //                         plan['id'] as int?,
                    //                         plan['selected_period'] as String,
                    //                         couponCode,
                    //                       );

                    //                       // var response = await http.post(
                    //                       //     Uri.parse(
                    //                       //         'https://ayouok.online/api/v1/user/order/save'),
                    //                       //     headers: {
                    //                       //       'Authorization':
                    //                       //           SpUtil.getString('token')!,
                    //                       //     },
                    //                       //     body: {
                    //                       //       'plan_id': plan['id'],
                    //                       //       'period':
                    //                       //           plan['selected_period'],
                    //                       //       'coupon_code': couponCode,
                    //                       //     });

                    //                       // if (response.statusCode == 200) {
                    //                       //   // 请求成功，关闭对话框
                    //                       //   Navigator.of(context).pop();

                    //                       //   _checkout(context, response.body);
                    //                       // } else {
                    //                       //   // 请求失败，处理错误
                    //                       //   print(
                    //                       //       'Request failed with status: ${response.statusCode}.');
                    //                       // }
                    //                     } catch (e) {
                    //                       // 网络错误，处理错误
                    //                       print('Caught error: $e');
                    //                     }
                    //                   },
                    //                 ),
                    //               ],
                    //             );
                    //           },
                    //         );
                    //       },
                    //       child: Text(
                    //         '立即订阅',
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildButton(
    BuildContext context,
    String text,
    int? price, {
    bool isSelected = false,
    required VoidCallback onTap,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8), // 调整按钮的内边距
        backgroundColor: isSelected ? Colors.blue : null, // 根据选中状态设置背景色
      ),
      onPressed: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 文字剧中
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? Colors.white : null, // 根据选中状态设置文字颜色
            ),
          ),
          const SizedBox(height: 4), // 增加文字和价格之间的间距
          Text(
            _convertPrice(price ?? 0),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : null, // 根据选中状态设置文字颜色
            ),
          ),
        ],
      ),
    );
  }

  bool _isSelected(String label, BuildContext context) {
    // 在这里添加逻辑以确定按钮是否处于选中状态
    // 这里的示例逻辑是简单地判断按钮的标签是否与某个选中状态的标签相匹配
    // 你可以根据实际需求修改这里的逻辑
    // 这里仅作示例，请根据实际情况进行调整
    // 下面的示例逻辑将所有按钮都视为未选中状态
    return false;
  }

  void _handlePurchase(BuildContext context, dynamic price) {
    final priceInYuan = price / 100;

    print('选中套餐价格为：$priceInYuan 元');
    // Navigator.pop(context);
  }

  String _convertPrice(int? priceInCent) {
    if (priceInCent != null) {
      double priceInYuan = priceInCent / 100;
      return '$priceInYuan 元';
    } else {
      return '不可用';
    }
  }

  void _saveOrder(
      BuildContext context, int? planId, String period, String coupon) async {
    // print('planId: $planId, period: $period, coupon: $coupon');

    final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

    try {
      final response = await http.post(
        Uri.parse(baseUrl + '/api/v1/user/order/save'),
        headers: {
          'Authorization': SpUtil.getString('token')!,
        },
        body: {
          'plan_id': planId.toString(),
          'period': period,
          if (coupon != null) 'coupon_code': coupon,
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body) as Map<String, dynamic>;

        print(responseData);

        Navigator.of(context).pop();

        // SpUtil.putObject('order', responseData['data'] as Object);

        SpUtil.putString('tradeNo', responseData['data'] as String);

        GoRouter.of(context).push('/order');

        // Navigate to another page after successful order save
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => OrderPage()),
        // );
      } else {
        throw '请求失败：状态码 ${response.statusCode}';
      }
    } catch (e) {
      throw '网络请求错误：$e';
    }
  }

  // void _checkOut(BuildContext context, Map<String, dynamic> data) async {
  //   final paymentMethods = data['data'] as List<dynamic>;

  //   try {
  //     final response = await http.get(
  //       Uri.parse('https://ayouok.online/api/v1/user/order/getPaymentMethod'),
  //       headers: {
  //         'Authorization': SpUtil.getString('token')!,
  //       },
  //     );

  //     if (response.statusCode == 200) {
  //       final responseData = json.decode(response.body) as Map<String, dynamic>;

  //       final checkout = await http.post(
  //         Uri.parse('https://ayouok.online/api/v1/user/order/getPaymentMethod'),
  //         headers: {
  //           'Authorization': SpUtil.getString('token')!,
  //         },
  //         body: {
  //           'trade_no': data['data'],
  //           'method': responseData['data'][0]['id'],
  //         },
  //       );

  //       if (checkout.statusCode == 200) {
  //         final checkoutData =
  //             json.decode(checkout.body) as Map<String, dynamic>;

  //         print(checkoutData);

  //         // 提醒支付成功
  //         Get.snackbar('支付成功', '请等待系统处理订单');

  //         // Get.toNamed(checkoutData['data']['url']);
  //       } else {
  //         throw '请求失败：状态码 ${checkout.statusCode}';
  //       }

  //       // Process the responseData as needed
  //     } else {
  //       throw '请求失败：状态码 ${response.statusCode}';
  //     }
  //   } catch (e) {
  //     throw '网络请求错误：$e';
  //   }
  // }
}
