import 'package:flutter/material.dart';

/// General constants
const colorBlack = Colors.black;
const colorWhite = Colors.white;

/// Color constants for Light Theme
//const colorPrimaryLight = Colors.deepPurple;
const colorPrimaryLight = Colors.cyan;
const colorBackgroundLight = Color(0xFFE0E0E0);

/// Color constants for Dark Theme
const colorPrimaryDark = Colors.cyan;
const colorBackgroundDark = Color.fromARGB(100, 32, 32, 32);

class CustomAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: colorPrimaryLight,
        scaffoldBackgroundColor: colorBackgroundLight,

        // Theming for Icon
        iconTheme: const IconThemeData(
          color: colorBlack
        ),

        // Theming for Text
        textTheme: const TextTheme(
            headline1: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: colorBlack,
        )));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: colorPrimaryDark,
        scaffoldBackgroundColor: colorBackgroundDark,
        textTheme: const TextTheme(
            headline1: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: colorPrimaryDark,
        )));
  }
}

/*
const appTextTheme = TextTheme(
  headline1: TextStyle(
    fontFamily: "Proxima  Nova",
    fontSize: 4,
    fontWeight: FontWeight.bold,
    //letterSpacing: -1.5,
    color: colorPrimaryLight,
  ),
);

ThemeData appLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: colorPrimaryLight,
  scaffoldBackgroundColor: colorBackgroundLight,
  textTheme: appTextTheme,
);

ThemeData appDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: colorPrimaryDark,
  scaffoldBackgroundColor: colorBackgroundDark,
  textTheme: appTextTheme,
);
*/
