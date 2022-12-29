import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class PromptMember extends StatelessWidget {
  const PromptMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).promptMember,
      style: Theme.of(context).textTheme.caption,
    );
  }
}
