import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chat_Body extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    MessageViewController controller = Get.put(MessageViewController());
    return ListView.builder(
      itemCount: controller.messageList.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(controller.messageList[index].image),
            ),
          ],
        );
      },
    );
  }
}
