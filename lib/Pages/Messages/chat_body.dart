import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chat_Body extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: GetX<MessageViewController>(
            init: MessageViewController(),
            builder: (_) => _.messageList.length == 0
                ? Center(
                    child: Text("No Messages"),
                  )
                : ListView.builder(
                    itemCount: _.messageList.length,
                    itemBuilder: (context, index) => _.messageList[index],
                  ),
          ),
        ),
      ],
    );
  }
}
