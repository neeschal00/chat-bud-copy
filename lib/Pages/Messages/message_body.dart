import 'package:chat_bud/Models/chat_messages.dart';
import 'package:chat_bud/Pages/Messages/Components/chat_inputfield.dart';
import 'package:chat_bud/Pages/Messages/Components/message_comp.dart';
import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:chat_bud/Pages/Messages/view_photot.dart';
import 'package:chat_bud/constants.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Message_Body extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    print("Messages no: ${controller.messages["messages"].length}");

    Widget messageContaint(ChatMessages message) {
      if (message.isMedia ?? false) {
        return Padding(
          padding: const EdgeInsets.only(top: kDefaultPadding),
          child: Row(
            children: [
              if (message.sender_name != "jaikant") ...[
                CircleAvatar(
                  backgroundImage: AssetImage(message.sender_avatar.toString()),
                ),
                ImageMessage(
                  message: message,
                ),
              ],
            ],
          ),
        );
      }
      return Message(message: message);
    }

    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: controller.messages["messages"].length,
              itemBuilder: (context, index) =>
                  messageContaint(controller.messages["messages"][index]),
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}

class ImageMessage extends StatelessWidget {
  const ImageMessage({
    Key? key,
    @required this.message,
  }) : super(key: key);
  final ChatMessages? message;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        child: GestureDetector(
            onTap: () => Get.to(ViewPhoto(url: message?.mediaUrl)),
            child: AspectRatio(
                aspectRatio: 1.5,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        message?.mediaUrl ?? "",
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}
