import 'dart:math';

import 'package:dartx/dartx.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sp_util/sp_util.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:reaeeman/gen/translations.g.dart';
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
import 'package:sliver_tools/sliver_tools.dart';
import 'package:get/get.dart';

class NoticePage extends ConsumerStatefulWidget {
  const NoticePage({super.key});

  @override
  ConsumerState<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends ConsumerState<NoticePage> {
  bool _isLoading = true;
  List<dynamic>? _noticeList;

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
        Uri.parse('$baseUrl/api/v1/user/notice/fetch'),
        headers: {'Authorization': token!},
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body)['data'] as List<dynamic>;
        setState(() {
          _isLoading = false;
          _noticeList = jsonData.reversed.toList(); // Reverse the list
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
        title: Text(t.notice.pageTitle),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _noticeList!.length,
              itemBuilder: (context, index) {
                final notice = _noticeList![index];
                return NoticeCard(notice: notice);
              },
            ),
    );
  }
}

class NoticeCard extends StatelessWidget {
  final dynamic notice;

  const NoticeCard({Key? key, required this.notice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseUrl = SpUtil.getObject('baseUrl')?['api'] as String;
    return InkWell(
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
            // Text(
            //   notice['content'] as String,
            //   style: TextStyle(fontSize: 14),
            // ),
            Linkify(
              onOpen: (link) async {
                if (await canLaunch(link.url)) {
                  await launch(link.url);
                } else {
                  throw 'Could not launch $link';
                }
              },
              text: notice['content'] as String,
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // children: <Widget>[
              //   Text(
              //     '创建时间: ${DateTime.fromMillisecondsSinceEpoch(notice['created_at'] * 1000 as int).toString().substring(0, 19)}',
              //     style: TextStyle(fontSize: 12),
              //   ),
              //   TextButton(
              //     onPressed: () {
              //       Clipboard.setData(ClipboardData(
              //           text: baseUrl +
              //               '/#/register?code=' +
              //               notice['code'].toString()));
              //     },
              //     child: Text('复制链接'),
              //   ),
              // ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
