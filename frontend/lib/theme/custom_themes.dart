import 'package:flutter/material.dart';

/// General constants
const colorBlack = Colors.black;
const colorWhite = Colors.white;
const colorGrey = Colors.grey;

/// Color constants for Light Theme
const colorPrimaryLight = Colors.deepPurple;
//const colorPrimaryLight = Colors.cyan;
const colorBackgroundLight = Color(0xFFE0E0E0);
const colorShadowLight = Colors.white24;
const colorNavBarLight = Colors.black;

/// Color constants for Dark Theme
const colorPrimaryDark = Colors.cyan;
const colorBackgroundDark = Color.fromARGB(255, 32, 32, 32);
const colorShadowDark = Colors.black12;
const colorNavBarDark = Colors.white;

/// Contains all the theming for LightTheme
class CustomAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: colorPrimaryLight,
      scaffoldBackgroundColor: colorBackgroundLight,
      hintColor: colorGrey,
      shadowColor: colorShadowLight,

      // Theming for Drawer
      drawerTheme: const DrawerThemeData(
        backgroundColor: colorBackgroundLight,
      ),

      // Theming for AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: colorBackgroundLight,
        centerTitle: true,
      ),

      // Theming for Icons
      iconTheme: const IconThemeData(color: colorPrimaryLight),

      // Theming for Text
      textTheme: const TextTheme(
        headline3: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: colorBlack,
        ),
        headline5: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: colorPrimaryLight,
        ),
        headline6: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 22,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
          color: colorBlack,
        ),
        bodyText1: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colorPrimaryLight,
        ),
        subtitle1: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color:  colorBlack,
        ),
        caption: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          color: colorBlack,
        ),
      ),
    );
  }

  /// Contains all the theming for DarkTheme
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: colorPrimaryDark,
      scaffoldBackgroundColor: colorBackgroundDark,
      hintColor: colorGrey,
      shadowColor: colorShadowDark,

      // Theming for Drawer
      drawerTheme: const DrawerThemeData(
        backgroundColor: colorBackgroundDark,
      ),

      // Theming for AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: colorBackgroundDark,
        centerTitle: true,
      ),

      // Theming for Icons
      iconTheme: const IconThemeData(color: colorPrimaryDark),

      // Theming for Text
      textTheme: const TextTheme(
        headline3: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: colorWhite,
        ),
        headline5: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: colorPrimaryDark,
        ),
        headline6: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 22,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
          color: colorWhite,
        ),
        bodyText1: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colorPrimaryDark,
        ),
        subtitle1: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: colorWhite,
        ),
        caption: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          color: colorWhite,
        ),
      ),
    );
  }
}
