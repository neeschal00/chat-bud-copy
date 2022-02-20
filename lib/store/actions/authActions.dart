// import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import "package:redux/redux.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chat_bud/models/Models.dart';
import 'package:chat_bud/screens/auth/Login.dart';
import 'package:chat_bud/screens/home/UsersList.dart';
import 'package:chat_bud/store/actions/types.dart';
import 'package:chat_bud/store/reducer.dart';
import 'dart:convert';
//Load Action

Future<void> loadUser({Store<ChatState> store, BuildContext context}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String _token = prefs.getString("apiToken") ?? null;

  final url = Uri.parse("http://192.168.1.66:5000/login/user");
  Map<String, String> headers = {
    "Content-type": "application/json",
    "x-signal-token": _token
  };

  Response response = await get(url, headers: headers);
  final statusCode = response.statusCode;

  // print(statusCode);
  if (statusCode != 200) {
    prefs.remove("apiToken");

    new Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }
}

//login action
Future<void> login() {}

//Register action
Future<void> register() {}
