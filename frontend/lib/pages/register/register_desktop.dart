import 'package:flutter/material.dart';

import 'package:frontend/pages/components/register_ui_components/desktop_register_component.dart';
import 'package:frontend/pages/components/register_ui_components/register_welcome_component.dart';

class DesktopRegister extends StatefulWidget {
  const DesktopRegister({Key? key}) : super(key: key);

  @override
  State<DesktopRegister> createState() => _DesktopRegisterState();
}

class _DesktopRegisterState extends State<DesktopRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              flex: 4,
              child: RegisterWelcomeComponent(),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: DesktopRegisterSidePart(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
