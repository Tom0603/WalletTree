import 'package:flutter/material.dart';

import 'package:frontend/pages/components/login_ui_components/email_input_field.dart';
import 'package:frontend/pages/components/login_ui_components/password_input_field.dart';
import 'package:frontend/pages/components/login_ui_components/register_now_button.dart';
import 'package:frontend/pages/components/login_ui_components/sign_in_button.dart';

class DesktopLoginSidePart extends StatefulWidget {
  const DesktopLoginSidePart({Key? key}) : super(key: key);

  @override
  State<DesktopLoginSidePart> createState() => _DesktopLoginSidePartState();
}

class _DesktopLoginSidePartState extends State<DesktopLoginSidePart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Email input field

                const SizedBox(
                  width: 500,
                  child: EmailInputField(),
                ),

                const SizedBox(
                  height: 20,
                ),

                /// Password input field

                const SizedBox(
                  width: 500,
                  child: PasswordInputField(),
                ),

                const SizedBox(
                  height: 20,
                ),

                /// Sign in button

                const SizedBox(
                  width: 500,
                  child: SignInButton(),
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
