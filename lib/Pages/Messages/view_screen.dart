import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewMessage extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Message'),
      ),
      body: Center(
        child: Text('View Message'),
      ),
    );
  }
}