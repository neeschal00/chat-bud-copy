import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chat_bud/Screens/SingleChatPage.dart';
import 'package:chat_bud/providers/ChatsProvider.dart';

class ContactCard extends StatefulWidget {
  final String? name;
  final String? id;
  final String? pic;
  const ContactCard({Key? key, this.name, this.id, this.pic}) : super(key: key);

  @override
  _ContactCardState createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print(widget.id);
        isSelected == false
            ? Provider.of<ChatsNotifierProvider>(context, listen: false)
                .createChat(widget.id!)
                .then((value) {
                setState(() {
                  isSelected = true;
                });
                print("Value :" + jsonDecode(value)['id']);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SingleChatPage(
                            chatId: jsonDecode(value)['id'],
                            chatName: widget.name,
                            otherUserId: widget.id!)));
              })
            : print("Doing");
      },
      leading: Container(
        width: 50,
        height: 53,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                widget.pic!,
              ),
              // backgroundColor: Colors.blueGrey[200],
            ),
            Container()
          ],
        ),
      ),
      title: Text(
        widget.name!,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
