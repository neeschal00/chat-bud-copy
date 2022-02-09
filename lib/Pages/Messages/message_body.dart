import 'package:chat_bud/Pages/Messages/chat_inputfield.dart';
import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:chat_bud/constants.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Message_Body extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Text("Chat Text"),
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
