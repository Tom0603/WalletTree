import 'package:flutter/material.dart';
import 'package:frontend/pages/register/register_desktop.dart';

import 'package:frontend/pages/register/register_mobile.dart';
import 'package:frontend/responsive/responsive.dart';

import '../register/register_tablet.dart';

class RegisterBuilder extends StatelessWidget {
  const RegisterBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getRegisterScreen(context);
  }

  getRegisterScreen(context) {
    if (Responsive.isMobile(context)) {
      return const MobileRegister();
    } else if (Responsive.isDesktop(context)) {
      return const DesktopRegister();
    } else {
      return const TabletRegister();
    }
  }
}
