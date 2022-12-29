import 'package:flutter/material.dart';

import 'package:frontend/pages/builder_pages/register_builder.dart';

import '../../../generated/l10n.dart';

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
        S.of(context).registerNow,
        style:
            Theme.of(context).textTheme.caption?.copyWith(color: Colors.blue),
      ),
    );
  }
}
