import 'package:chat_bud/constants.dart';
import 'package:flutter/material.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kContentColorLightTheme),
      bodyText2: TextStyle(color: kContentColorLightTheme),
      button: TextStyle(color: kContentColorLightTheme),
      caption: TextStyle(color: kContentColorLightTheme),
      headline1: TextStyle(color: kContentColorLightTheme),
      headline2: TextStyle(color: kContentColorLightTheme),
      headline3: TextStyle(color: kContentColorLightTheme),
      headline4: TextStyle(color: kContentColorLightTheme),
      headline5: TextStyle(color: kContentColorLightTheme),
      headline6: TextStyle(color: kContentColorLightTheme),
      subtitle1: TextStyle(color: kContentColorLightTheme),
      subtitle2: TextStyle(color: kContentColorLightTheme),
      overline: TextStyle(color: kContentColorLightTheme),
    ),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorDarkTheme),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kContentColorDarkTheme),
      bodyText2: TextStyle(color: kContentColorDarkTheme),
      button: TextStyle(color: kContentColorDarkTheme),
      caption: TextStyle(color: kContentColorDarkTheme),
      headline1: TextStyle(color: kContentColorDarkTheme),
      headline2: TextStyle(color: kContentColorDarkTheme),
      headline3: TextStyle(color: kContentColorDarkTheme),
      headline4: TextStyle(color: kContentColorDarkTheme),
      headline5: TextStyle(color: kContentColorDarkTheme),
      headline6: TextStyle(color: kContentColorDarkTheme),
      subtitle1: TextStyle(color: kContentColorDarkTheme),
      subtitle2: TextStyle(color: kContentColorDarkTheme),
      overline: TextStyle(color: kContentColorDarkTheme),
    ),
    colorScheme: ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
