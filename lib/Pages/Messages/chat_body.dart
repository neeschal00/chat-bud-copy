import 'package:chat_bud/Models/chat.dart';
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
        return ChatCard(chat: controller.messageList[index]);
      },
    );
  }
}

class ChatCard extends GetView<MessageViewController> {
  const ChatCard({Key? key, this.chat}) : super(key: key);
  final Chat? chat;

  @override
  Widget build(BuildContext context) {
    MessageViewController controller = Get.put(MessageViewController());
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(chat!.image),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(chat!.name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(height: 8),
                Opacity(
                  opacity: 0.5,
                  child: Text(chat!.lastMessage,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
          )),
          Opacity(
            opacity: 0.64,
            child: Text(chat!.time),
          )
        ],
      ),
    );
  }
}
