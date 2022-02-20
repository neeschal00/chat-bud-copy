import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:localstorage/localstorage.dart';
import 'package:chat_bud/screens/auth/Register.dart';
import 'package:chat_bud/store/actions/authActions.dart';
import 'package:chat_bud/store/reducer.dart';

import '../../main.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: LoginMain());
  }
}

class LoginMain extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sigin.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      padding: EdgeInsets.only(left: 52, right: 52, bottom: 10),
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/signin.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: SizedBox(
                        height: 100.0,
                        child: null,
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
