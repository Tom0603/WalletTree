import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class PasswordRegisterField extends StatelessWidget {
  const PasswordRegisterField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: S.of(context).hintPassword,
              hintStyle: TextStyle(color: Theme.of(context).hintColor),
            ),
          ),
        ),
      ),
    );
  }
}
