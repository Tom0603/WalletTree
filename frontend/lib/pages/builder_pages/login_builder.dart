import 'package:flutter/material.dart';

import 'package:frontend/pages/login_desktop.dart';
import 'package:frontend/pages/login_mobile.dart';
import 'package:frontend/responsive/responsive.dart';

class LoginBuilder extends StatelessWidget {
  const LoginBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getLoginScreen(context),
    );
  }

  getLoginScreen(context) {
    if (Responsive.isMobile(context)) {
      return const MobileLogin();
    } else {
      return const DesktopLogin();
    }
  }
}
