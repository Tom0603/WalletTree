import 'package:flutter/material.dart';

import 'package:frontend/pages/components/register_ui_components/create_account_button.dart';
import 'package:frontend/pages/components/register_ui_components/email_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/name_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/password_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/register_welcome_component.dart';

import '../components/register_ui_components/register_sign_in_button.dart';

class MobileRegister extends StatefulWidget {
  const MobileRegister({Key? key}) : super(key: key);

  @override
  State<MobileRegister> createState() => _MobileRegisterState();
}

class _MobileRegisterState extends State<MobileRegister> {
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
                const RegisterWelcomeComponent(),
                const SizedBox(height: 120),
                const NameInputField(),
                const SizedBox(height: 20),
                const EmailRegisterField(),
                const SizedBox(height: 20),
                const PasswordRegisterField(),
                const SizedBox(height: 20),
                const CreateAccountButton(),
                const SizedBox(height: 20),

                /// Have an account?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an Account?',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const RegisterSignInButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
