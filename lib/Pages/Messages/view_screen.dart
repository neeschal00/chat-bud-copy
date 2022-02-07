import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewMessage extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chatid'),
      ),
      body: Center(
        child: Text('hello world'),
      ),
    );
  }
}
