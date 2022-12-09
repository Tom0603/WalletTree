import 'package:flutter/material.dart';
import 'package:frontend/pages/builder_pages/dashboard_builder.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DashboardBuilder()),
        );
      },
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              'Sign in',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          )),
    );
  }
}
