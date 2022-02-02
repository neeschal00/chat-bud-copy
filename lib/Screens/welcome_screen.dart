import 'package:chat_bud/Pages/dashboard/dashboard_page.dart';
import 'package:chat_bud/Profile/sign_in.dart';
import 'package:chat_bud/Profile/sign_up.dart';
import 'package:chat_bud/Screens/test_api.dart';
import 'package:chat_bud/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
      footerPadding: EdgeInsets.symmetric(vertical: 24.0),
    );
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDark = brightness == Brightness.dark;

    return Scaffold(
        body: SafeArea(
            child: IntroductionScreen(
                pages: [
          PageViewModel(
            title: "ChatBud",
            body:
                "ChatBud is a simple and secure messaging app. It is designed to make chatting easier and more secure.",
            image: Center(child: Lottie.asset('assets/lottie/chat1.json')),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Secure",
            body:
                "ChatBud uses End to End encryption to ensure that your messages are not read by anyone else.",
            image: Center(child: Lottie.asset('assets/lottie/secure.json')),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Easy",
            body:
                "ChatBud is designed to make chatting easier and more secure. It is designed to make chatting easier and more secure.",
            image: Center(child: Lottie.asset('assets/lottie/chat2.json')),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Fast",
            body:
                "ChatBud delivers messages faster than any other messaging app",
            image: Center(child: Lottie.asset('assets/lottie/fast.json')),
            decoration: pageDecoration,
          )
        ],
                showDoneButton: false,
                showNextButton: false,
                showSkipButton: false,
                globalFooter: SizedBox(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                    child: const Text(
                      'Start Chatting',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => {
                      Get.to(SignIn()),
                    },
                  ),
                ),
                dotsDecorator: DotsDecorator(
                    size: const Size.square(10.0),
                    activeSize: const Size(20.0, 10.0),
                    activeColor: Color(0xFF6F35A5),
                    color: isDark ? Colors.white : Colors.black,
                    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0))))));
  }
}
