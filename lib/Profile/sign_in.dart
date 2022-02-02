import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SignIn extends StatelessWidget {
  final formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/launch_image.png',
                    fit: BoxFit.contain,
                    width: 100,
                    height: 100,
                  ),
                ),
                Container(
                  child: FormBuilder(
                    key: formKey,
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: 'textfield',
                          decoration:
                              InputDecoration(labelText: "Enter Your number"),
                        ),
                        ElevatedButton(
                          child: Text('Submit'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    onChanged: () => (print(formKey.currentState)),
                    autovalidateMode: AutovalidateMode.always,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}