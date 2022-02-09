import 'package:chat_bud/Pages/Messages/chat_body.dart';
import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:chat_bud/Pages/Messages/tab_status.dart';
import 'package:chat_bud/Pages/Search/search_view.dart';
import 'package:chat_bud/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewMessage extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    MessageViewController controller = Get.put(MessageViewController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Tab_status(),
            ),
            Expanded(
              child: Chat_Body(),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Chats'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            Get.to(SearchPage());
          },
        ),
      ],
    );
  }
}
