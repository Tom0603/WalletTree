import 'package:flutter/material.dart';

import 'package:frontend/responsive/responsive.dart';

import '../../../generated/l10n.dart';

class RegisterWelcomeComponent extends StatelessWidget {
  const RegisterWelcomeComponent({Key? key}) : super(key: key);

  static double size = size;
  static dynamic textSize = textSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Candlestick icon
            Icon(
              Icons.candlestick_chart_outlined,
              size: getIconSize(context),
              color: Theme.of(context).iconTheme.color,
            ),

            /// Register Greeting
            Text(
              S.of(context).registerGreeting,
              style: getHeadlineSize(context),
            ),

            const SizedBox(height: 25),

            /// Register Subtext
            Text(
              S.of(context).registerSubtext,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }

  getIconSize(context) {
    if (Responsive.isDesktop(context) == false) {
      return size = 140;
    } else {
      return size = 240;
    }
  }

  getHeadlineSize(context) {
    if (Responsive.isDesktop(context) == false) {
      return textSize = Theme.of(context).textTheme.headline4;
    } else {
      return textSize = Theme.of(context).textTheme.headline2;
    }
  }
}
