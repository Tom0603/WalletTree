import 'package:flutter/material.dart';
import 'package:frontend/pages/login_page.dart';
import 'package:frontend/responsive/responsive.dart';
import 'package:frontend/pages/components/login_ui_components/welcome_component.dart';

class LoginBuilder extends StatelessWidget {
  const LoginBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isMobile(context)) ...[
              Column(
                children: const [
                  WelcomeComponent(),
                  LoginScreen(),
                ],
              ),
            ] else ...[
              const Expanded(
                flex: 4,
                child: WelcomeComponent(),
              ),
              const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: LoginScreen(),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
