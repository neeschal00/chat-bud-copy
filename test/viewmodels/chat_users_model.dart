import 'package:chat_bud/Model/ChatUsers.dart';
import 'package:chat_bud/Model/Message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat_bud/Model/ChatModel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("test chat users model", () {
    final chatUser = ChatUser(
        sId: "893e2hd",
        name: "test",
        email: "test@gmail.com",
        password: "test1",
        pic: "http://localhost:3000/uploads/test.jpg",
        iV: 1);

    expect(chatUser.toJson(), {
      "sId": "893e2hd",
      "name": "test",
      "email": "test@gmail.com",
      "password": "test1",
      "pic": "http://localhost:3000/uploads/test.jpg",
      "iV": 1
    });
  });
}
