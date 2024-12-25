import 'dart:math';

import 'package:dartx/dartx.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:reaeeman/core/app_info/app_info_provider.dart';
import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/model/failures.dart';
import 'package:reaeeman/core/router/router.dart';
import 'package:reaeeman/features/common/nested_app_bar.dart';
import 'package:reaeeman/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sp_util/sp_util.dart';

class InvitePage extends ConsumerStatefulWidget {
  const InvitePage({Key? key}) : super(key: key);

  @override
  ConsumerState<InvitePage> createState() => _InvitePageState();
}

class _InvitePageState extends ConsumerState<InvitePage> {
  bool _isLoading = true;
  List<dynamic>? _inviteList;
  List<int> _stat = [];

  @override
  void initState() {
    super.initState();
    fetchInviteData();
  }

  Future<void> fetchInviteData() async {
    try {
      await SpUtil.getInstance();
      final token = SpUtil.getString("token");
      final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

      final response = await http.get(
        Uri.parse('$baseUrl/api/v1/user/invite/fetch'),
        headers: {'Authorization': token!},
      );

      if (response.statusCode == 200) {
        final jsonData =
            json.decode(response.body)['data'] as Map<String, dynamic>;
        final inviteList = jsonData['codes'] as List<dynamic>;
        final stat = jsonData['stat'] as List<dynamic>;

        setState(() {
          _isLoading = false;
          _inviteList = inviteList.reversed.toList();
          _stat = stat.cast<int>();
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

  Future<void> generateInviteCode() async {
    try {
      await SpUtil.getInstance();
      final token = SpUtil.getString("token");
      final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

      final response = await http.get(
        Uri.parse('$baseUrl/api/v1/user/invite/save'),
        headers: {'Authorization': token!},
      );

      if (response.statusCode == 200) {
        fetchInviteData();
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
    final theme = Theme.of(context);
    final t = ref.watch(translationsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.invite.pageTitle),
        elevation: 0,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  // 顶部卡片 - 显示总佣金
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          theme.colorScheme.primaryContainer,
                          theme.colorScheme.primaryContainer.withOpacity(0.8),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.primary.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          t.invite.totalCommission,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(0.8),
                            fontSize: 16,
                          ),
                        ),
                        const Gap(8),
                        Text(
                          '¥ ${(_stat[4] / 100).toStringAsFixed(2)}',
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 统计信息卡片
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color:
                            theme.colorScheme.outlineVariant.withOpacity(0.2),
                      ),
                    ),
                    child: Column(
                      children: [
                        _buildStatRow(
                          context,
                          icon: FluentIcons.people_24_regular,
                          title: t.invite.registeredUsers,
                          value: '${_stat[0]}',
                        ),
                        const Divider(height: 24),
                        _buildStatRow(
                          context,
                          icon: FluentIcons.money_24_regular,
                          title: t.invite.commissionRate,
                          value: '${_stat[3]}%',
                        ),
                        const Divider(height: 24),
                        _buildStatRow(
                          context,
                          icon: FluentIcons.clock_24_regular,
                          title: t.invite.pendingCommission,
                          value: '¥ ${(_stat[2] / 100).toStringAsFixed(2)}',
                        ),
                        const Divider(height: 24),
                        _buildStatRow(
                          context,
                          icon: FluentIcons.wallet_24_regular,
                          title: t.invite.totalCommission,
                          value: '¥ ${(_stat[1] / 100).toStringAsFixed(2)}',
                        ),
                      ],
                    ),
                  ),

                  // 邀请码管理
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color:
                            theme.colorScheme.outlineVariant.withOpacity(0.2),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                t.invite.inviteCode,
                                style: theme.textTheme.titleMedium,
                              ),
                              TextButton.icon(
                                onPressed: generateInviteCode,
                                icon: const Icon(FluentIcons.add_24_regular),
                                label: Text(t.invite.generateInviteCode),
                              ),
                            ],
                          ),
                        ),
                        const Divider(height: 1),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _inviteList?.length ?? 0,
                          separatorBuilder: (context, index) =>
                              const Divider(height: 1),
                          itemBuilder: (context, index) {
                            final orderData =
                                _inviteList![index] as Map<String, dynamic>;
                            return _buildInviteCodeItem(context, orderData);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildStatRow(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Theme.of(context).colorScheme.primary,
        ),
        const Gap(12),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Spacer(),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }

  Widget _buildInviteCodeItem(BuildContext context, Map<String, dynamic> data) {
    final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;
    final inviteLink = '$baseUrl/#/register?code=${data['code']}';
    final createTime = DateTime.fromMillisecondsSinceEpoch(
      data['created_at'] * 1000 as int,
    );

    return InkWell(
      onTap: () {
        Clipboard.setData(ClipboardData(text: inviteLink));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('邀请链接已复制')),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['code'].toString(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Gap(4),
                  Text(
                    createTime.toString().substring(0, 19),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                  ),
                ],
              ),
            ),
            Icon(
              FluentIcons.copy_24_regular,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
