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

Future<void> loadUser({Store<ChatState> store, BuildContext context}) {
  print("loadUser");
}

//login action
Future<void> login() {}

//Register action
Future<void> register() {}
