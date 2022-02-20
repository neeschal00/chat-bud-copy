import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:localstorage/localstorage.dart';
import 'package:chat_bud/screens/auth/Register.dart';
import 'package:chat_bud/store/actions/authActions.dart';
import 'package:chat_bud/screens/home/UsersList.dart';

import '../../main.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final LocalStorage storage = new LocalStorage('signal');
  @override
  void initState() {
    super.initState();

    new Future.delayed(const Duration(seconds: 3), () {
      store.dispatch(loadUser(store: store, context: context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Text('Onboarding'),
      )),
    );
  }
}
