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
import 'package:reaeeman/features/subscribe/widget/order_page.dart';
import 'package:reaeeman/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sp_util/sp_util.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('订单详情'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: orderDetails(),
        builder: (context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 48,
                    color: colorScheme.error,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '加载失败',
                    style: TextStyle(
                      fontSize: 16,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    snapshot.error.toString(),
                    style: TextStyle(
                      fontSize: 14,
                      color: colorScheme.outline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          } else {
            final decodedData = snapshot.data!['data'] as Map<String, dynamic>?;
            final paymentData = snapshot.data!['payment'] as Map<String, dynamic>?;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 订单状态卡片
                        Card(
                          elevation: 0,
                          color: colorScheme.primaryContainer.withOpacity(0.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: colorScheme.primary.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    Icons.receipt_outlined,
                                    color: colorScheme.primary,
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '订单编号',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: colorScheme.onPrimaryContainer.withOpacity(0.8),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        decodedData?['trade_no'] ?? '',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: colorScheme.onPrimaryContainer,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // 订单信息卡片
                        Card(
                          elevation: 0,
                          color: colorScheme.surfaceVariant.withOpacity(0.3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              color: colorScheme.outlineVariant.withOpacity(0.5),
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '订单信息',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: colorScheme.onSurface,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                _buildInfoRow(
                                  context,
                                  Icons.shopping_bag_outlined,
                                  '商品名称',
                                  decodedData?['plan']?['name'] ?? '',
                                ),
                                const SizedBox(height: 12),
                                _buildInfoRow(
                                  context,
                                  Icons.payment_outlined,
                                  '订单金额',
                                  '¥ ${decodedData?['total_amount'] / 100 ?? ''}',
                                ),
                                const SizedBox(height: 12),
                                _buildInfoRow(
                                  context,
                                  Icons.access_time,
                                  '创建时间',
                                  DateTime.fromMillisecondsSinceEpoch(
                                    decodedData?['created_at'] * 1000 as int,
                                  ).toString().substring(0, 19),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // 支付按钮
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: colorScheme.surface,
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme.shadow.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: SafeArea(
                    child: FilledButton.icon(
                      onPressed: () => initiatePayment(paymentData?['id'] as int, context),
                      icon: Icon(Icons.payment),
                      label: Text('${paymentData?['name'] ?? 'No payment data'} 支付'),
                      style: FilledButton.styleFrom(
                        backgroundColor: colorScheme.primary,
                        minimumSize: const Size.fromHeight(48),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, IconData icon, String label, String value) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: colorScheme.primary,
        ),
        const SizedBox(width: 8),
        Text(
          '$label:',
          style: TextStyle(
            fontSize: 14,
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 14,
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Future<Map<String, dynamic>> orderDetails() async {
    try {
      await SpUtil.getInstance();
      final token = SpUtil.getString("token");
      final tradeNo = SpUtil.getString("tradeNo");
      final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

      final response = await http.get(
        Uri.parse(baseUrl + '/api/v1/user/order/detail?trade_no=$tradeNo'),
        headers: {'Authorization': token!},
      );

      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body) as Map<String, dynamic>;

        final payment = await http.get(
          Uri.parse(baseUrl + '/api/v1/user/order/getPaymentMethod'),
          headers: {'Authorization': token!},
        );

        if (payment.statusCode == 200) {
          final decodedPaymentData =
              json.decode(payment.body) as Map<String, dynamic>;

          decodedData['payment'] = decodedPaymentData['data'][0];

          print(decodedData['payment']);

          return decodedData;
        } else {
          throw '请求失败：状态码 ${payment.statusCode}';
        }
      } else {
        throw '请求失败：状态码 ${response.statusCode}';
      }
    } catch (e) {
      throw '网络请求错误：$e';
    }
  }

  Future<void> initiatePayment(int paymentId, BuildContext context) async {
    try {
      final token = SpUtil.getString("token");
      final tradeNo = SpUtil.getString("tradeNo");
      final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

      final response = await http.post(
        Uri.parse(baseUrl + '/api/v1/user/order/checkout'),
        headers: {
          'Authorization': token!,
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'trade_no': tradeNo, // 订单编号
          'method': paymentId, // 支付方式
        }),
      );
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body) as Map<String, dynamic>;
        final data = responseData['data'] as String?;
        if (data != null) {
          final url = data;
          print(data);

          await launchUrl(Uri.parse(url));
        } else {
          throw '无法获取支付链接';
        }
      } else {
        throw '请求失败：状态码 ${response.statusCode}';
      }
    } catch (e) {
      Get.snackbar('支付发起失败', '网络请求错误：$e');
    }
  }
}
