import 'dart:math';

import 'package:dartx/dartx.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'package:html/dom.dart' as dom;
import 'package:flutter_linkify/flutter_linkify.dart';

class KnowledgePage extends ConsumerStatefulWidget {
  const KnowledgePage({Key? key}) : super(key: key);

  @override
  _KnowledgePageState createState() => _KnowledgePageState();
}

class _KnowledgePageState extends ConsumerState<KnowledgePage> {
  bool _isLoading = true;
  Map<String, List<dynamic>>? _noticeMap;

  @override
  void initState() {
    super.initState();
    getNotice();
  }

  Future<void> getNotice() async {
    try {
      await SpUtil.getInstance();
      final token = SpUtil.getString("token");
      final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

      final response = await http.get(
        Uri.parse('$baseUrl/api/v1/user/knowledge/fetch?language=zh-CN'),
        headers: {'Authorization': token!},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body)['data'];
        setState(() {
          _isLoading = false;
          _noticeMap = data != null ? Map<String, List<dynamic>>.from(data) : null;
        });
      } else {
        setState(() {
          _isLoading = false;
          _noticeMap = null;
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _noticeMap = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(translationsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(t.knowledge.pageTitle),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _noticeMap == null || _noticeMap!.isEmpty
              ? Center(child: Text(t.knowledge.noData))
              : ListView.builder(
                  itemCount: _noticeMap!.length,
                  itemBuilder: (context, index) {
                    final category = _noticeMap!.keys.toList()[index];
                    final notices = _noticeMap![category];
                    return NoticeCategory(category: category, notices: notices!);
                  },
                ),
    );
  }
}

class NoticeCategory extends StatelessWidget {
  final String category;
  final List<dynamic> notices;

  const NoticeCategory({
    Key? key,
    required this.category,
    required this.notices,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            category,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: notices.length,
          itemBuilder: (context, index) {
            final notice = notices[index];
            return NoticeCard(notice: notice);
          },
        ),
        const Divider(),
      ],
    );
  }
}

class NoticeCard extends StatelessWidget {
  final dynamic notice;

  const NoticeCard({Key? key, required this.notice}) : super(key: key);

  Future<Map<String, dynamic>> _fetchNoticeDetails(String id) async {
    try {
      await SpUtil.getInstance();
      final token = SpUtil.getString("token");
      final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;

      final response = await http.get(
        Uri.parse('$baseUrl/api/v1/user/knowledge/fetch?language=zh-CN&id=$id'),
        headers: {'Authorization': token!},
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body)['data'];
        return jsonData as Map<String, dynamic>;
      } else {
        throw '请求失败：状态码 ${response.statusCode}';
      }
    } catch (e) {
      throw '网络请求错误：$e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final id = notice['id'].toString();
        try {
          final data = await _fetchNoticeDetails(id);
          // Show detailed notice data
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 8),
                      Container(
                        height: 4,
                        width: 50,
                        margin: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: MediaQuery.of(context).size.width *
                                0.4), // 调整横条居中位置
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['title'] as String,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Linkify(
                              onOpen: (link) async {
                                if (await canLaunch(link.url)) {
                                  await launch(link.url);
                                } else {
                                  throw 'Could not launch $link';
                                }
                              },
                              text: data['body'] as String,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } catch (e) {
          // Handle error
          print(e);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              notice['title'] as String,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              (notice['content'] as String?) ?? '',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
