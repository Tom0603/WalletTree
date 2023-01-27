import 'package:flutter/material.dart';

import 'package:frontend/pages/components/register_ui_components/create_account_button.dart';
import 'package:frontend/pages/components/register_ui_components/email_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/name_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/password_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/register_sign_in_button.dart';

import '../../../generated/l10n.dart';

/// This class is the component containing the [NameInputField], [EmailRegisterField], [PasswordRegisterField], [CreateAccountButton],
/// and the "Already a member?" prompt and [RegisterSignInButton] for the desktop login page.
class DesktopRegisterSidePart extends StatefulWidget {
  const DesktopRegisterSidePart({Key? key}) : super(key: key);

  @override
  State<DesktopRegisterSidePart> createState() =>
      _DesktopRegisterSidePartState();
}

class _DesktopRegisterSidePartState extends State<DesktopRegisterSidePart> {
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
                /// Name input field
                const SizedBox(
                  width: 500,
                  child: NameInputField(),
                ),

                const SizedBox(
                  height: 20,
                ),

                /// Email input field
                const SizedBox(
                  width: 500,
                  child: EmailRegisterField(),
                ),

                const SizedBox(
                  height: 20,
                ),

                /// Password input field
                const SizedBox(
                  width: 500,
                  child: PasswordRegisterField(),
                ),

                const SizedBox(
                  height: 20,
                ),

                /// Sign in button
                const SizedBox(
                  width: 500,
                  child: CreateAccountButton(),
                ),

                const SizedBox(height: 20),

                /// Already a member?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).promptAccount,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const RegisterSignInButton()
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
