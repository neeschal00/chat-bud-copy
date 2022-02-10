import 'package:chat_bud/Profile/sign_in_controller.dart';
import 'package:chat_bud/Profile/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignIn extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Image.asset(
                      isDarkMode
                          ? "assets/icons/chat bud-logos_white.png"
                          : "assets/icons/chat bud-logos_transparent.png",
                      fit: BoxFit.contain,
                      width: 250,
                      height: 300,
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: FormBuilder(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        Container(
                          child: FormBuilderTextField(
                            name: 'textfield',
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Usernamed"),
                          ),
                          width: 300,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: FormBuilderTextField(
                            name: 'textfield',
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Password"),
                          ),
                          width: 300,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          child: Text('Submit'),
                          onPressed: () {
                            if (controller.formKey.currentState!
                                .saveAndValidate()) {
                              print(controller.formKey.currentState!.value);
                            }
                            Get.to(SignUp());
                          },
                        ),
                      ],
                    ),
                    onChanged: () => (print(controller.formKey.currentState)),
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
