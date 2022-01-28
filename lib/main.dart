import 'package:chat_bud/Screens/welcome_screen.dart';
import 'package:chat_bud/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chat Bud',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: Welcome(),
    );
  }
}
