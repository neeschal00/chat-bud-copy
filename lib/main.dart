import 'package:chat_bud/Pages/Messages/chat_screen.dart';
import 'package:chat_bud/Pages/Messages/view_screen.dart';
import 'package:chat_bud/Pages/Search/search_view.dart';
import 'package:chat_bud/Pages/Settingscb/setting_page.dart';
import 'package:chat_bud/Pages/dashboard/dashboard_page.dart';
import 'package:chat_bud/Profile/profile.dart';
import 'package:chat_bud/Profile/sign_up.dart';
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
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Welcome()),
        GetPage(name: "/signup", page: () => SignUp()),
        GetPage(name: "/search", page: () => SearchPage()),
        GetPage(name: "/chat", page: () => ViewMessage()),
        GetPage(name: "/chat_screen", page: () => Chat_Screen()),
        GetPage(name: "/profile", page: () => Profile()),
        GetPage(name: "/settings", page: () => Setting_page()),
      ],
      home: Welcome(),
    );
  }
}
