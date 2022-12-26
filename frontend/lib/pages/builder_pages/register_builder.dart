import 'package:flutter/material.dart';

import 'package:frontend/pages/register/register_mobile.dart';

import '../register/register_tablet.dart';

class RegisterBuilder extends StatelessWidget {
  const RegisterBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabletRegister();
  }
}
