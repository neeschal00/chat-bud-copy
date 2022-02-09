import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Chat_Screen extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: Center(
        child: Text("Chat"),
      ),
    );
  }
}
