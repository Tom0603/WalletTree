import 'package:flutter/material.dart';

import 'package:frontend/pages/builder_pages/register_builder.dart';

class RegisterNowButton extends StatelessWidget {
  /// Blue "Register Now!" button for Login Page with navigator to Register Page.
  const RegisterNowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterBuilder()));
      },
      child: Text(
        ' Register Now!',
        style:
            Theme.of(context).textTheme.caption?.copyWith(color: Colors.blue),
      ),
    );
  }
}
