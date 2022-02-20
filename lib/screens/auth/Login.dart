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
  String _email = "";
  String _password = "";
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
              width: double.infinity,
              height: double.infinity,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('assets/images/signin.png'),
              //     fit: BoxFit.cover,
              //   ),
              // ),
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
                    //error messages
                    StoreConnector<ChatState, String>(
                      converter: (store) => store.state.errMsg,
                      onWillChange: (prev, next) {},
                      builder: (_, errMsg) {
                        return Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "$errMsg",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        );
                      },
                    ),
                    //INputes container
                    Container(
                      margin: const EdgeInsets.only(top: 2.0),
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextField(
                              onChanged: (email) {
                                setState(() {
                                  if (email.length > 0) {
                                    _email = email;
                                  }
                                  // _email = email;
                                });
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                  color: Color(0xffC4C4C4),
                                  width: 2,
                                )),
                                hintText: "email@email.com",
                                hintStyle: TextStyle(
                                    color: Color(0xffC4C4C4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              textCapitalization: TextCapitalization.none,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextField(
                              onChanged: (password) {
                                setState(() {
                                  if (password.length > 0) {
                                    _password = password;
                                  }
                                  // _password = password;
                                });
                              },
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                  color: Color(0xffC4C4C4),
                                  width: 2,
                                )),
                                hintText: "*******",
                                hintStyle: TextStyle(
                                    color: Color(0xffC4C4C4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              textCapitalization: TextCapitalization.none,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(25),
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.red,
                                    backgroundColor: Color(0xff474EF41),
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 15.0, 0.0, 15.0),
                                  ),
                                  onPressed: () {
                                    store.dispatch(login(
                                        store: store,
                                        email: _email,
                                        password: _password));
                                  },
                                  child: Text('Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)))),
                          Container(
                              margin: EdgeInsets.all(25),
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.red,
                                    backgroundColor: Color(0xFFFFFFFF),
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 15.0, 0.0, 15.0),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Register()));
                                  },
                                  child: Text('Click here to register',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)))),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
