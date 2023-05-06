import 'package:flutter/material.dart';

/// General constants
const colorBlack = Colors.black;
const colorWhite = Colors.white;
const colorGrey = Colors.grey;

/// Color constants for Light Theme
const colorPrimaryLight = Colors.deepPurple;
//const colorPrimaryLight = Colors.cyan;
const colorBackgroundLight = Colors.white;
//const colorBackgroundLight = Color(0xFFE0E0E0);
const colorShadowLight = Colors.white24;
const colorNavBarLight = Colors.white;
const colorSideBarLight = Colors.white54;

/// Color constants for Dark Theme
//const colorPrimaryDark = Colors.cyanAccent;
const colorPrimaryDark = Colors.deepPurple;
//const colorBackgroundDark = Color.fromARGB(255, 15, 15, 15);
const colorBackgroundDark = Color.fromARGB(255, 38, 37, 69);
const colorShadowDark = Colors.black12;
const colorNavBarDark = Colors.black;
//const colorSideBarDark = Color.fromARGB(255, 25, 25, 25);
const colorSideBarDark = Color.fromARGB(255, 30, 30, 55);

/// Contains all the theming for LightTheme
class CustomAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: colorPrimaryLight,
      scaffoldBackgroundColor: colorBackgroundLight,
      hintColor: colorGrey,
      shadowColor: colorShadowLight,

      /// Theming for Drawer
      drawerTheme: const DrawerThemeData(
        backgroundColor: colorSideBarLight,
      ),

      /// Theming for AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: colorSideBarLight,
        centerTitle: true,
      ),

      /// Theming for BottomNavigationBar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: colorBackgroundLight,
        selectedItemColor: colorBlack,
        unselectedItemColor: colorBlack,
        selectedLabelStyle: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: colorPrimaryLight,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: colorPrimaryLight,
        ),
        unselectedIconTheme: IconThemeData(
          color: colorPrimaryLight,
          size: 24,
        ),
        selectedIconTheme: IconThemeData(
          color: colorPrimaryLight,
          size: 28,
        ),
      ),

      /// Theming for Icons
      iconTheme: const IconThemeData(color: colorPrimaryLight),

      /// Theming for Cards
      cardColor: colorSideBarLight,

      /// Theming for Text
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 96,
          fontWeight: FontWeight.bold,
          color: colorBlack,
        ),
        headline2: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: colorBlack,
        ),
        headline3: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: colorBlack,
        ),
        headline4: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: colorBlack,
        ),
        headline5: TextStyle(
          fontFamily: "Proxima Nova",
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
          letterSpacing: 0.5,
          color: colorBlack,
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

      /// Theming for Drawer
      drawerTheme: const DrawerThemeData(
        backgroundColor: colorSideBarDark,
      ),

      /// Theming for AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: colorSideBarDark,
        centerTitle: true,
      ),

      /// Theming for BottomNavigationBar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: colorBackgroundDark,
        selectedItemColor: colorWhite,
        unselectedItemColor: colorWhite,
        selectedLabelStyle: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: colorWhite,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: colorWhite,
        ),
        unselectedIconTheme: IconThemeData(
          color: colorPrimaryDark,
          size: 24,
        ),
        selectedIconTheme: IconThemeData(
          color: colorPrimaryDark,
          size: 28,
        ),
      ),

      /// Theming for Icons
      iconTheme: const IconThemeData(color: colorPrimaryDark),

      /// Theming for Cards
      cardColor: colorSideBarDark,

      /// Theming for Text
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 96,
          fontWeight: FontWeight.bold,
          color: colorWhite,
        ),
        headline2: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: colorWhite,
        ),
        headline3: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: colorWhite,
        ),
        headline4: TextStyle(
          fontFamily: "Proxima Nova",
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: colorWhite,
        ),
        headline5: TextStyle(
          fontFamily: "Proxima  Nova",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: colorWhite,
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
          letterSpacing: 0.5,
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
