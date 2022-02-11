import 'package:chat_bud/Models/chat_messages.dart';
import 'package:chat_bud/Pages/Messages/Components/chat_inputfield.dart';
import 'package:chat_bud/Pages/Messages/Components/message_comp.dart';
import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:chat_bud/constants.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Message_Body extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    print("Messages no: ${controller.messages["messages"].length}");
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: controller.messages["messages"].length,
              itemBuilder: (context, index) => Message(
                message: controller.messages['messages'][index],
              ),
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
