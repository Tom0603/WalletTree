import 'package:flutter/material.dart';

import 'package:frontend/pages/components/login_ui_components/email_input_field.dart';
import 'package:frontend/pages/components/login_ui_components/password_input_field.dart';
import 'package:frontend/pages/components/login_ui_components/register_now_button.dart';
import 'package:frontend/pages/components/login_ui_components/sign_in_button.dart';
import 'package:frontend/pages/components/login_ui_components/welcome_component.dart';

class TabletLogin extends StatefulWidget {
  const TabletLogin({Key? key}) : super(key: key);

  @override
  State<TabletLogin> createState() => _TabletLoginState();
}

class _TabletLoginState extends State<TabletLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const WelcomeComponent(),

                const SizedBox(height: 120),

                /// Email input field
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5),
                  child: const EmailInputField(),
                ),

                const SizedBox(height: 20),

                /// Password input field
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5),
                  child: const PasswordInputField(),
                ),

                const SizedBox(height: 20),

                /// Sign in button
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5),
                  child: const SignInButton(),
                ),

                const SizedBox(height: 20),

                /// Not a member?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a Member?',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const RegisterNowButton()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
