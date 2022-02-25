import 'package:flutter/material.dart';
import 'package:chat_bud/Model/User.dart';
import 'package:chat_bud/Screens/CameraScreen.dart';
import 'package:chat_bud/Screens/SignupScreen.dart';
import 'package:chat_bud/Screens/SplashScreen.dart';
import 'package:chat_bud/Services/Utility.dart';
import 'package:chat_bud/providers/AuthenticationProvider.dart';
import 'package:chat_bud/providers/ChatsProvider.dart';
import 'package:chat_bud/providers/MessageProvider.dart';
import 'package:chat_bud/providers/UsersProvider.dart';
import 'package:chat_bud/views/Home.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final user = User("Harshit", "Harshitr2001@gmail.com");
    // print(user.toJson());
    // final s = User.fromJson(user.toJson());
    // print(s.name);
    // print(s.email);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthenticationProvider()),
        ChangeNotifierProvider(create: (_) => ChatsNotifierProvider()),
        ChangeNotifierProvider(create: (_) => UserProviderNotifier()),
        ChangeNotifierProvider(create: (_) => MessageNotifierProvider()),
        ChangeNotifierProvider(create: (_) => UtilityNotifier()),
        // ChangeNotifierProvider(create: (_) => Mess())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "OpenSans",
            primaryColor: Color(0xFF075E54),
            accentColor: Color(0xFF128C7E)),
        home: SplashScreen(),
      ),
    );
  }
}
