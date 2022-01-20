import 'package:chat_bud/Models/breakingbad.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:chat_bud/Models/user.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

String url = "http://localhost:3000/";
User user = new User();

Future<User> registerUser(
    String username, String email, String password) async {
  final http.Response response =
      await http.post(Uri.parse(url + "/users/register"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'username': username,
            'email': email,
            'password': password,
          }));
  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return User.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  late String _username, _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter a username";
                  }
                },
                onSaved: (value) {
                  _username = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter an email";
                  }
                },
                onSaved: (value) {
                  _email = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter a password";
                  }
                },
                onSaved: (value) {
                  _password = value;
                },
              ),
              ElevatedButton(
                child: Text("Register"),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    registerUser(_username, _email, _password).then((value) {
                      user = value;
                      Navigator.pushReplacementNamed(context, "/chat");
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
