import 'package:chat_bud/Models/chat.dart';
import 'package:chat_bud/Pages/Messages/chat_card.dart';
import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:chat_bud/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chat_Body extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    MessageViewController controller = Get.put(MessageViewController());
    print(controller.messageList.length);
    return ListView.builder(
      itemCount: controller.messageList.length,
      itemBuilder: (BuildContext context, int index) {
        return ChatCard(
          chat: controller.messageList[index],
          press: () {},
        );
      },
    );
  }
}