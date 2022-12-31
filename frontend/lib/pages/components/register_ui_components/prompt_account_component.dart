import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class PromptAccount extends StatelessWidget {
  const PromptAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).promptAccount,
      style: Theme.of(context).textTheme.caption,
    );
  }
}
