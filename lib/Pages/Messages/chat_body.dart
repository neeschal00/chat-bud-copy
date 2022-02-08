import 'package:chat_bud/Models/chat.dart';
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
        return ChatCard(chat: controller.messageList[index]);
      },
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({Key key, this.chat}) : super(key: key);
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    MessageViewController controller = Get.put(MessageViewController());
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage(chat.image),
        ),
      ],
    );
  }
}
