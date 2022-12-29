import 'package:flutter/material.dart';

import 'package:frontend/responsive/responsive.dart';

import '../../../generated/l10n.dart';

class WelcomeComponent extends StatelessWidget {
  /// Welcome component including a candlestick chart icon and a welcome text

  const WelcomeComponent({Key? key}) : super(key: key);

  static double size = size;
  static dynamic textSize = textSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            /// Candlestick icon
            Icon(
              Icons.candlestick_chart_outlined,
              size: getIconSize(context),
              color: Theme.of(context).iconTheme.color,
            ),

            /// Login Greeting
            Text(
              S.of(context).loginGreeting,
              style: getHeadlineSize(context),
            ),

            const SizedBox(height: 25),

            /// Login Subtext
            Text(
              S.of(context).loginSubtext,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }

  getIconSize(context) {
    if (!Responsive.isDesktop(context)) {
      return size = 140;
    } else {
      return size = 240;
    }
  }

  getHeadlineSize(context) {
    if (!Responsive.isDesktop(context)) {
      return textSize = Theme.of(context).textTheme.headline3;
    } else {
      return textSize = Theme.of(context).textTheme.headline2;
    }
  }
}
