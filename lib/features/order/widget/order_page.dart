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
import 'package:get/get.dart' hide Translations;
import 'package:url_launcher/url_launcher.dart';
import 'package:reaeeman/gen/translations.g.dart';

class OrderListPage extends ConsumerStatefulWidget {
  const OrderListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends ConsumerState<OrderListPage> {
  List<dynamic>? _orderList;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchOrderList();
  }

  Future<void> fetchOrderList() async {
    try {
      await SpUtil.getInstance();
      final token = SpUtil.getString("token");
      final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

      final response = await http.get(
        Uri.parse('$baseUrl/api/v1/user/order/fetch'),
        headers: {'Authorization': token!},
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData =
            json.decode(response.body)['data'] as List<dynamic>;
        setState(() {
          _isLoading = false;
          _orderList = jsonData;
        });
      } else {
        throw '请求失败：状态码 ${response.statusCode}';
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      throw '网络请求错误：$e';
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(translationsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(t.order.pageTitle),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _orderList == null || _orderList!.isEmpty
              ? Center(child: Text(t.order.noOrder))
              : ListView.builder(
                  itemCount: _orderList!.length,
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> orderData =
                        _orderList![index] as Map<String, dynamic>;
                    return OrderCard(
                      orderData: orderData,
                      closeOrder: (context) async {
                        // 发起关闭订单的网络请求

                        print('关闭订单');

                        await SpUtil.getInstance();

                        final token = SpUtil.getString("token");

                        final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

                        final orderResponse = await http.post(
                          Uri.parse('$baseUrl/api/v1/user/order/cancel'),
                          headers: {'Authorization': token!},
                          body: {'trade_no': orderData['trade_no']},
                        );

                        // 关闭订单成功
                        if (orderResponse.statusCode == 200) {
                          Get.snackbar('订单关闭成功', '订单关闭成功');

                          // 刷新订单列表
                          fetchOrderList();

                          Navigator.of(context).pop();
                        } else {
                          // 关闭订单失败
                          Get.snackbar('订单关闭失败', '订单关闭失败');
                        }
                      },
                      payOrder: (context) async {
                        // 发起支付订单的网络请求

                        print('支付订单');

                        SpUtil.putString('tradeNo', orderData['trade_no'] as String);

                        GoRouter.of(context).push('/order');

                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
    );
  }
}

class OrderCard extends ConsumerWidget {
  const OrderCard({
    Key? key,
    required this.orderData,
    required this.closeOrder,
    required this.payOrder,
  }) : super(key: key);

  final Map<String, dynamic> orderData;
  final Function(BuildContext) closeOrder;
  final Function(BuildContext) payOrder;

  String _getStatusText(int status, Translations t) {
    final statusMap = {
      0: t.order.detail.status.pending,
      1: t.order.detail.status.processing,
      2: t.order.detail.status.cancelled,
      3: t.order.detail.status.completed,
      4: t.order.detail.status.refunded,
    };
    return statusMap[status] ?? t.order.detail.status.pending;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final t = ref.watch(translationsProvider);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colorScheme.outlineVariant.withOpacity(0.2),
        ),
      ),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: colorScheme.surface,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 4,
                      width: 40,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: colorScheme.outline.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        _getStatusText(orderData['status'] as int, t),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: colorScheme.onSurface,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.shopping_bag_outlined, color: colorScheme.primary),
                      title: Text(
                        t.order.detail.product.call(name: orderData['plan']?['name']),
                        style: TextStyle(color: colorScheme.onSurfaceVariant),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.payment_outlined, color: colorScheme.primary),
                      title: Text(
                        t.order.detail.price.call(amount: (orderData['total_amount'] / 100).toString()),
                        style: TextStyle(color: colorScheme.onSurfaceVariant),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.receipt_outlined, color: colorScheme.primary),
                      title: Text(
                        t.order.detail.orderNumber.call(number: orderData['trade_no']),
                        style: TextStyle(color: colorScheme.onSurfaceVariant),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.access_time, color: colorScheme.primary),
                      title: Text(
                        t.order.detail.createTime.call(
                          time: DateTime.fromMillisecondsSinceEpoch(
                                  orderData['created_at'] * 1000 as int)
                              .toString()
                              .substring(0, 19),
                        ),
                        style: TextStyle(color: colorScheme.onSurfaceVariant),
                      ),
                    ),
                    if (orderData['status'] == 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () => closeOrder(context),
                                icon: const Icon(Icons.close),
                                label: Text(t.order.action.cancel),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: colorScheme.error,
                                  side: BorderSide(color: colorScheme.error),
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: FilledButton.icon(
                                onPressed: () => payOrder(context),
                                icon: const Icon(Icons.payment),
                                label: Text(t.order.action.pay),
                                style: FilledButton.styleFrom(
                                  backgroundColor: colorScheme.primary,
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    const SizedBox(height: 16),
                  ],
                ),
              );
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    orderData['plan']?['name'] ?? '',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: {
                        0: colorScheme.errorContainer,
                        1: colorScheme.primaryContainer,
                        2: colorScheme.surfaceVariant,
                        3: colorScheme.secondaryContainer,
                        4: colorScheme.tertiaryContainer,
                      }[orderData['status']]!,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      _getStatusText(orderData['status'] as int, t),
                      style: TextStyle(
                        fontSize: 12,
                        color: {
                          0: colorScheme.onErrorContainer,
                          1: colorScheme.onPrimaryContainer,
                          2: colorScheme.onSurfaceVariant,
                          3: colorScheme.onSecondaryContainer,
                          4: colorScheme.onTertiaryContainer,
                        }[orderData['status']]!,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.payment_outlined,
                    size: 16,
                    color: colorScheme.primary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '¥${orderData['total_amount'] / 100}',
                    style: TextStyle(
                      fontSize: 14,
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    Icons.access_time,
                    size: 16,
                    color: colorScheme.outline,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      DateTime.fromMillisecondsSinceEpoch(orderData['created_at'] * 1000 as int)
                          .toString()
                          .substring(0, 19),
                      style: TextStyle(
                        fontSize: 14,
                        color: colorScheme.outline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderDetailPage extends ConsumerWidget {
  const OrderDetailPage({Key? key, required this.orderData}) : super(key: key);

  final Map<String, dynamic> orderData;

  String _getStatusText(int status, Translations t) {
    final statusMap = {
      0: t.order.detail.status.pending,
      1: t.order.detail.status.processing,
      2: t.order.detail.status.cancelled,
      3: t.order.detail.status.completed,
      4: t.order.detail.status.refunded,
    };
    return statusMap[status] ?? t.order.detail.status.pending;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(t.order.detail.pageTitle),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            title: Text(_getStatusText(orderData['status'] as int, t)),
          ),
          ListTile(
            title: Text(
              t.order.detail.product.call(name: orderData['plan']?['name']),
            ),
          ),
          ListTile(
            title: Text(
              t.order.detail.price
                  .call(amount: (orderData['total_amount'] / 100).toString()),
            ),
          ),
          ListTile(
            title: Text(
              t.order.detail.orderNumber.call(number: orderData['trade_no']),
            ),
          ),
          ListTile(
            title: Text(
              t.order.detail.createTime.call(
                time: DateTime.fromMillisecondsSinceEpoch(
                        orderData['created_at'] * 1000 as int)
                    .toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
