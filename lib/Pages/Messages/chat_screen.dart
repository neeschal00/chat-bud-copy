import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Chat_Screen extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    print(data);
    return Scaffold(
      appBar: AppBar(
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
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Chat"),
      ),
    );
  }
}
