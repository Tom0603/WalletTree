import 'package:flutter/material.dart';

import 'package:frontend/pages/builder_pages/login_builder.dart';

class RegisterSignInButton extends StatelessWidget {
  /// Blue "Sign in!" button for Register Page with navigator to Login Page.

  const RegisterSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginBuilder()));
      },
      child: Text(
        ' Sign up!',
        style:
            Theme.of(context).textTheme.caption?.copyWith(color: Colors.blue),
      ),
    );
  }
}
