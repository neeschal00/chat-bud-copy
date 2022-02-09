import 'package:chat_bud/Pages/Messages/message_body.dart';
import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:chat_bud/constants.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Chat_Screen extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    print(data);
    return Scaffold(
      appBar: buildAppBar(data),
      body: Message_Body(),
    );
  }

  AppBar buildAppBar(data) {
    return AppBar(
      title: Row(
        children: [
          (data.name == controller.messages['name'])
              ? CircleAvatar(
                  backgroundImage: AssetImage(data.image),
                  radius: 20,
                )
              : CircleAvatar(
                  backgroundImage: AssetImage(data.image),
                  radius: 20,
                ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.messages['name'],
                style: TextStyle(fontSize: 16),
              ),
              Text(
                data.time,
                style: TextStyle(fontSize: 12),
              ),
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPadding,
        ),
      ],
    );
  }
}
