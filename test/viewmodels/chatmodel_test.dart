import 'package:chat_bud/Model/ChatModel.dart';
import 'package:chat_bud/Model/Message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat_bud/Model/ChatModel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Message Model test", () {
    test("Message Model test", () {
      expect(true, true);
    });
    test("Message Model test", () async {
      final dt_now = DateTime.now();
      final data = Data(
          id: "1",
          chatName: "Groupname",
          users: [],
          createdAt: dt_now.toString(),
          updatedAt: dt_now.toString(),
          V: 1);
    });
  });
}
