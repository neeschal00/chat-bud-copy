import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatelessWidget {
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
                  child: Lottie.asset('assets/lottie/signup.json'),
                ),
                Container(
                  child: FormBuilder(
                    key: formKey,
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: 'textfield',
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
