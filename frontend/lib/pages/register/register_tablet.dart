import 'package:flutter/material.dart';

import 'package:frontend/pages/components/register_ui_components/password_register_field.dart';
import 'package:frontend/pages/components/register_ui_components/register_welcome_component.dart';
import 'package:frontend/pages/components/register_ui_components/email_register_field.dart';

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

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 5),
                  child: const EmailRegisterField(),
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 5),
                  child: const PasswordRegisterField(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
