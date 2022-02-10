import 'package:chat_bud/Models/chat_messages.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ListView.builder(
                itemBuilder: (context, index) => Message(
                  message: controller.messages['messages'][index],
                ),
              ),
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}

class Message extends StatelessWidget {
  const Message({
    Key? key,
    @required this.message,
  }) : super(key: key);
  final ChatMessages? message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding * 0.75,
              horizontal: kDefaultPadding / 2),
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
          child: Text(
            message!.message.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
      mainAxisAlignment: (message!.sender_name == "jaikant")
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
    );
  }
}
