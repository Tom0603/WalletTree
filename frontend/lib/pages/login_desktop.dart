import 'package:flutter/material.dart';

import 'package:frontend/pages/components/login_ui_components/welcome_component.dart';
import 'package:frontend/pages/login_page.dart';

class DesktopLogin extends StatefulWidget {
  const DesktopLogin({Key? key}) : super(key: key);

  @override
  State<DesktopLogin> createState() => _DesktopLoginState();
}

class _DesktopLoginState extends State<DesktopLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              flex: 4,
              child: WelcomeComponent(),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: LoginScreen(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
