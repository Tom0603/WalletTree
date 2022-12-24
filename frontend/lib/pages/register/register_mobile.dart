import 'package:flutter/material.dart';

import 'package:frontend/pages/components/register_ui_components/create_account_button.dart';
import 'package:frontend/pages/components/register_ui_components/email_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/name_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/password_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/register_welcome_component.dart';

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
              children: const [
                RegisterWelcomeComponent(),
                SizedBox(height: 120),
                NameInputField(),
                SizedBox(height: 20),
                EmailRegisterField(),
                SizedBox(height: 20),
                PasswordRegisterField(),
                SizedBox(height: 20),
                CreateAccountButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
