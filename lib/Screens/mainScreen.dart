import 'package:flutter/material.dart';

class MainPageState extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Bud'),
      ),
      body: Center(
        child: Text('Main Page'),
      ),
    );
  }
}
