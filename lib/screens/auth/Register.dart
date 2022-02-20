import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:localstorage/localstorage.dart';
import 'package:chat_bud/main.dart';
import 'package:chat_bud/screens/auth/Login.dart';
import 'package:chat_bud/store/actions/authActions.dart';
import 'package:chat_bud/store/reducer.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: RegisterMain());
  }
}

class RegisterMain extends StatefulWidget {
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<RegisterMain> {
  String _email = "";
  String _password = "";
  String _cpassword = "";

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
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                  color: Color(0xffC4C4C4),
                                  width: 2,
                                )),
                                hintText: "Password",
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
                                    _cpassword = password;
                                  }
                                  // _cpassword = password;
                                });
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                  color: Color(0xffC4C4C4),
                                  width: 2,
                                )),
                                hintText: "Confirm Password",
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
                                    store.dispatch(register(
                                        store: store,
                                        email: _email,
                                        password: _password,
                                        cpassword: _cpassword));
                                  },
                                  child: Text('Register',
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
                                    backgroundColor: Colors.blueGrey[300],
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 15.0, 0.0, 15.0),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()),
                                    );
                                  },
                                  child: Text('Click here to Login',
                                      style: TextStyle(
                                          color: Colors.black38,
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
