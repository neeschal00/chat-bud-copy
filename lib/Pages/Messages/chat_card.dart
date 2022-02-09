import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat_bud/constants.dart';
import 'package:chat_bud/Models/chat.dart';

class ChatCard extends GetView<MessageViewController> {
  const ChatCard({Key? key, @required this.chat, @required this.press})
      : super(key: key);
  final Chat? chat;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    MessageViewController controller = Get.put(MessageViewController());
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(chat!.image),
              ),
              if (chat!.isActive)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: Colors.green[400],
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ))),
                )
            ]),
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
      ),
    );
  }
}
