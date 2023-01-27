import 'package:flutter/material.dart';

import 'package:frontend/pages/login/login_desktop.dart';
import 'package:frontend/pages/login/login_mobile.dart';
import 'package:frontend/pages/login/login_tablet.dart';
import 'package:frontend/responsive/responsive.dart';

class LoginBuilder extends StatelessWidget {
  const LoginBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getLoginScreen(context);
  }

  /// Checks for the right device/screen size and returns the associated login page
  getLoginScreen(context) {
    if (Responsive.isMobile(context)) {
      return const MobileLogin();
    } else if (Responsive.isDesktop(context)) {
      return const DesktopLogin();
    } else {
      return const TabletLogin();
    }
  }
}
