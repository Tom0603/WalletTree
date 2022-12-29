import 'package:flutter/material.dart';

import 'package:frontend/pages/components/register_ui_components/create_account_button.dart';
import 'package:frontend/pages/components/register_ui_components/name_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/password_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/register_sign_in_button.dart';
import 'package:frontend/pages/components/register_ui_components/register_welcome_component.dart';
import 'package:frontend/pages/components/register_ui_components/email_register_field.dart';

import '../../generated/l10n.dart';

class TabletRegister extends StatefulWidget {
  const TabletRegister({Key? key}) : super(key: key);

  @override
  State<TabletRegister> createState() => _TabletRegisterState();
}

class _TabletRegisterState extends State<TabletRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const RegisterWelcomeComponent(),

                const SizedBox(height: 120),

                /// Name input field
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5),
                  child: const NameInputField(),
                ),

                const SizedBox(height: 20),

                /// Email input field
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5),
                  child: const EmailRegisterField(),
                ),

                const SizedBox(height: 20),

                /// Password input field
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5),
                  child: const PasswordRegisterField(),
                ),

                const SizedBox(height: 20),

                /// Create Account button
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5),
                  child: const CreateAccountButton(),
                ),

                const SizedBox(height: 20),

                /// Have an account?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).promptAccount,
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
