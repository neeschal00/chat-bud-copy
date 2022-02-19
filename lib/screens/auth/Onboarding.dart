import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:localstorage/localstorage.dart';
import 'package:signal/screens/auth/Register.dart';
import 'package:signal/store/actions/authActions.dart';
import 'package:signal/screens/home/UsersList.dart';

import '../../main.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        elevation: 0,
        title: Text(
          'ChatBud',
          style:
              TextStyle(color: Color(0xFF000000), fontWeight: FontWeight.w900),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            color: Color(0xFF000000),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(MaterialCommunityIcons.dots_vertical),
            color: Color(0xFF000000),
            iconSize: 20,
            onPressed: () {},
          )
        ],
      ),
      body: UsersList(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(
              Icons.photo,
              color: Colors.black87,
            ),
            onPressed: () {},
            heroTag: null,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 12,
          ),
          FloatingActionButton(
            child: Icon(Icons.edit),
            onPressed: () {},
            heroTag: null,
          )
        ],
      ),
    ));
  }
}
