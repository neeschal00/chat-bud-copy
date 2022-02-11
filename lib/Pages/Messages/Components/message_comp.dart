import 'package:chat_bud/Models/chat_messages.dart';
import 'package:flutter/material.dart';
import 'package:chat_bud/constants.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    @required this.message,
  }) : super(key: key);
  final ChatMessages? message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        children: [
          if (message!.sender_name != "jaikant") ...[
            CircleAvatar(
              backgroundImage: AssetImage(message!.sender_avatar.toString()),
            ),
            SizedBox(width: kDefaultPadding / 2),
          ],
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding * 0.75,
                horizontal: kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: kPrimaryColor
                    .withOpacity((message!.sender_name == "jaikant") ? 1 : 0.1),
                borderRadius: BorderRadius.circular(30)),
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
      ),
    );
  }
}
