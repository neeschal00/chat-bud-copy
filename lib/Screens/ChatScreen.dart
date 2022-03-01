import 'package:proximity_sensor/proximity_sensor.dart';
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'package:provider/provider.dart';
import 'package:chat_bud/Model/ChatModel.dart';
import 'package:chat_bud/Screens/SelectContactPage.dart';
import 'package:chat_bud/Widgets/Card.dart';
import 'package:chat_bud/Widgets/ContactCard.dart';
import 'package:chat_bud/providers/ChatsProvider.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'dart:async';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _isNear = false;
  late StreamSubscription<dynamic> _streamSubscription;

  @override
  void initState() {
    Provider.of<ChatsNotifierProvider>(context, listen: false).getUserChats();
    super.initState();
    listenSensor();
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectContact(),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
  }

  Future<void> listenSensor() async {
    FlutterError.onError = (FlutterErrorDetails details) {
      if (foundation.kDebugMode) {
        FlutterError.dumpErrorToConsole(details);
      }
    };
    _streamSubscription = ProximitySensor.events.listen((int event) {
      setState(() {
        _isNear = (event > 0) ? true : false;
      });
      if (_isNear) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectContact(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //  CourseProvider courseProvider(bool renderUi) =>
    //   Provider.of<CourseProvider>(context, listen: renderUi);
    // ChatsNotifierProvider chatsProvider(bool renderUi) =>
    return Consumer<ChatsNotifierProvider>(builder: (context, chats, snapshot) {
      return Scaffold(
        backgroundColor: Color(0xFF100E20),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.deepPurple,
            key: Key('floatingActionButton'),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SelectContact()));
            },
            child: Icon(Icons.person)),
        body: ListView.builder(
          itemCount: chats.d!.length,
          itemBuilder: (context, index) {
            return Cards(chatModel: chats.d, index: index);
          },
        ),
      );
    });
  }
}
