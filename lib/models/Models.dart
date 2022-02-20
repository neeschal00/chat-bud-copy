import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';

class User {
  final String id;
  final String email;
  final String name;
  User({
    this.id,
    @required this.email,
    @required this.name,
  });
}

class UserData {
  final String id;
  final String email;
  final String name;
  UserData({
    this.id,
    this.email,
    this.name,
  });
}

class ChatUsers {
  String name;
  String messageText;
  String time;

  ChatUsers({
    @required this.name,
    @required this.messageText,
    @required this.time,
  });
}

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({@required this.messageContent, @required this.messageType});
}
