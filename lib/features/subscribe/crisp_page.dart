import 'package:crisp/crisp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import './service/v2board_service.dart';

class CrispPage extends StatefulWidget {
  const CrispPage({super.key});

  @override
  State<CrispPage> createState() => _CrispPageState();
}

class _CrispPageState extends State<CrispPage> {
  late CrispMain crispMain;

  @override
  void initState() {
    super.initState();
    // final vs = Get.find<V2boardService>();
    crispMain = CrispMain(
      websiteId: 'f0dcc46d-e8db-4b79-8588-e307089c70c2',
      locale: 'zh-cn',
    );
    String? nickname;
    // if (vs.userInfo.value.email.isNotEmpty) {
    //   nickname = vs.userInfo.value.email
    //       .substring(0, vs.userInfo.value.email.indexOf("@"));
    // }
    crispMain.register(
      user: CrispUser(
        email: '123',
        avatar: 'https://avatars2.githubusercontent.com/u/16270189?s=200&v=4',
        nickname: 'nickname',
        // phone: "5511987654321",
      ),
    );

    crispMain.setMessage("请输入您想咨询的内容");

    crispMain.setSessionData({
      "order_id": "111",
      "app_version": "0.1.1",
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('在线客服'),
      ),
      body: CrispView(
        crispMain: crispMain,
        clearCache: false,
      ),
    );
  }
}
