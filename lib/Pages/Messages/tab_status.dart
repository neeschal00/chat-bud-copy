import 'package:chat_bud/Pages/Messages/message_controller.dart';
import 'package:chat_bud/constants.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Tab_status extends GetView<MessageViewController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text('Recent Messages'),
              ),
              SizedBox(width: kDefaultPadding),
              OutlinedButton(
                onPressed: () {},
                child: Text('Contacts'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
