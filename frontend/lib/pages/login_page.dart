import 'package:flutter/material.dart';
import 'package:frontend/pages/components/login_ui_components/email_input_field.dart';
import 'package:frontend/pages/components/login_ui_components/password_input_field.dart';
import 'package:frontend/pages/components/login_ui_components/sign_in_button.dart';
import 'package:frontend/responsive/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                //const SizedBox(height: 120),

                /// Email input field
                if (Responsive.isMobile(context)) ...[
                  const SizedBox(
                    width: 300,
                    child: EmailInputField(),
                  ),
                ] else ...[
                  const SizedBox(
                    width: 500,
                    child: EmailInputField(),
                  ),
                ],
                const SizedBox(
                  height: 20,
                ),

                /// Password input field
                if (Responsive.isMobile(context)) ...[
                  const SizedBox(
                    width: 300,
                    child: PasswordInputField(),
                  ),
                ] else ...[
                  const SizedBox(
                    width: 500,
                    child: PasswordInputField(),
                  ),
                ],
                const SizedBox(
                  height: 20,
                ),

                /// Sign in button
                if (Responsive.isMobile(context)) ...[
                  const SizedBox(
                    width: 300,
                    child: SignInButton(),
                  ),
                ] else ...[
                  const SizedBox(
                    width: 500,
                    child: SignInButton(),
                  ),
                ],

                const SizedBox(height: 20),

                /// Not a member?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a Member?',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      ' Register Now!',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: Colors.blue),
                    ),
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
