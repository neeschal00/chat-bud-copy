import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:chat_bud/constants.dart';

class ChatInput extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 50,
              color: Color(0xFF087949).withOpacity(0.08),
            )
          ]),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic, color: kPrimaryColor),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type a message',
                  // hintStyle: TextStyle(color: kPrimaryColor),
                ),
              ),
            ),
            Icon(Icons.attach_file_sharp,
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.color
                    ?.withOpacity(0.64)),
            SizedBox(width: kDefaultPadding / 4),
            Icon(Icons.camera_alt_outlined,
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.color
                    ?.withOpacity(0.64)),
          ],
        ),
      ),
    );
  }
}
