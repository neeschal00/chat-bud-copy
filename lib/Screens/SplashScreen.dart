import 'dart:async';

import 'package:flutter/material.dart';
import 'package:chat_bud/Screens/Decider.dart';
import 'package:chat_bud/Screens/SignupScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Decider()))
            });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF100E20),
      body: Container(
        child: Center(
          child: Text(
            "Chat Bud",
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
