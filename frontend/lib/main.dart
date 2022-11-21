import 'package:flutter/material.dart';

import 'package:frontend/pages/login_page.dart';
import 'package:frontend/theme/custom_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      //themeMode: ThemeMode.light,
      home: const LoginScreen(),
    );
  }
}
