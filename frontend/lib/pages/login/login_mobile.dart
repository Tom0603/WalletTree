import 'package:flutter/material.dart';

import 'package:frontend/pages/components/login_ui_components/email_input_field.dart';
import 'package:frontend/pages/components/login_ui_components/password_input_field.dart';
import 'package:frontend/pages/components/login_ui_components/register_now_button.dart';
import 'package:frontend/pages/components/login_ui_components/sign_in_button.dart';
import 'package:frontend/pages/components/login_ui_components/welcome_component.dart';
import '../components/login_ui_components/prompt_member_component.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({Key? key}) : super(key: key);

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
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
                const WelcomeComponent(),
                const SizedBox(height: 120),
                const EmailInputField(),
                const SizedBox(height: 20),
                const PasswordInputField(),
                const SizedBox(height: 20),
                const SignInButton(),
                const SizedBox(height: 20),

                /// Not a member?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    PromptMember(),
                    RegisterNowButton(),
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
