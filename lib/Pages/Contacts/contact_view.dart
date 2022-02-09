import 'package:chat_bud/Pages/Contacts/contact_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Contact_View extends GetView<ContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: Center(
        child: Text("Contacts"),
      ),
    );
  }
}
