import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:chat_bud/screens/auth/Login.dart';
import 'package:chat_bud/screens/auth/Onboarding.dart';
import 'package:chat_bud/store/reducer.dart';
import 'package:flutter_redux/flutter_redux.dart';

// Initial state/store values
final store = new Store(reducers,
    initialState: ChatState(
      errMsg: '',
      allUsers: [],
      isAuthenticated: false,
      activeRoom: "",
      activeUser: "",
      messages: [],
    ),
    middleware: [thunkMiddleware]);

Future<void> main() async {
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<ChatState> store;

  MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
        store: store,
        child: MaterialApp(
            title: 'Flutter Signal App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            initialRoute: "login",
            routes: {
              "onboarding": (BuildContext context) => Onboarding(),
              "login": (BuildContext context) => Login(),
            },
            home: SafeArea(
              child: Scaffold(),
            )));
  }
}
