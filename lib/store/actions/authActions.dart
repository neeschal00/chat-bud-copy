// import 'dart:html';
import 'dart:math';
import 'package:chat_bud/main.dart';
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
Future<void> login({
  Store<ChatState> store,
  BuildContext context,
  @required email,
  @required password,
}) async {}

//Register action
Future<void> register(
    {Store<ChatState> store,
    BuildContext context,
    @required email,
    @required password,
    @required cpassword}) async {
  final url = Uri.parse("http://192.168.1.66:5000/login/user");
  Map<String, String> headers = {
    "Content-type": "application/json",
  };

  String body = "";

  Response response = await post(url, headers: headers);
  final statusCode = response.statusCode;
  SharedPreferences prefs = await SharedPreferences.getInstance();

  if (statusCode != 200) {
    // prefs.setString("apiToken", response.headers["x-signal-token"]);
    dynamic body = json.decode(response.body);
    if (body['msg'] != "") {
      prefs.remove("apiToken");
      store.dispatch(new UpdateErrorAction(body['msg']));
    }

    if (statusCode == 200) {
      dynamic body = json.decode(response.body);
      if (body['user'] != null) {
        store.dispatch(Types.ClearError);

        User user = User(
            name: body["user"]["name"],
            email: body["user"]["email"],
            id: body["user"]["id"]);

        String token = body["token"];

        //set token
        await prefs.setString("apiToken", token);
        // prefs.setString("user", json.encode(user));

        //dispatch to store user inside state strore
        store.dispatch(new UpdateUserAction(user));
        // store.dispatch(Types.LoadUsers);

        //Redirect to Chats
        await Future.delayed(Duration(seconds: 3), () {
          print("about to redirect");
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(builder: (context) => UsersList()),
          // );
        });
      }
    }
  }
}

String generateRandomString(int len) {
  var r = Random();
  const _chars =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

  return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
}
