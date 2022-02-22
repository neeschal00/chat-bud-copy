import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chat_bud/Model/ChatModel.dart';
import 'package:chat_bud/Screens/SelectContactPage.dart';
import 'package:chat_bud/Widgets/Card.dart';
import 'package:chat_bud/Widgets/ContactCard.dart';
import 'package:chat_bud/providers/ChatsProvider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    Provider.of<ChatsNotifierProvider>(context, listen: false).getUserChats();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //  CourseProvider courseProvider(bool renderUi) =>
    //   Provider.of<CourseProvider>(context, listen: renderUi);
    // ChatsNotifierProvider chatsProvider(bool renderUi) =>
    return Consumer<ChatsNotifierProvider>(builder: (context, chats, snapshot) {
      return Scaffold(
        backgroundColor: Color(0xFF100E20),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.deepPurple,
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SelectContact()));
            },
            child: Icon(Icons.person)),
        body: ListView.builder(
          itemCount: chats.d!.length,
          itemBuilder: (context, index) {
            return Cards(chatModel: chats.d, index: index);
          },
        ),
      );
    });
  }
}
