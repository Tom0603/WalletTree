import 'package:flutter/material.dart';

import 'package:frontend/responsive/responsive.dart';

class WelcomeComponent extends StatelessWidget {
  /// Welcome component including a candlestick chart icon and a welcome text

  const WelcomeComponent({Key? key}) : super(key: key);

  static double size = size;
  static dynamic textSize = textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Candlestick icon
        Icon(
          Icons.candlestick_chart_outlined,
          size: getDevice(context),
          color: Theme.of(context).iconTheme.color,
        ),

        /// Hello Text
        Text(
          'Hello There!',
          style: getHeadlineSize(context),
        ),

        const SizedBox(height: 25),

        Text(
          'Nice to see you here!',
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }

  getDevice(context) {
    if (Responsive.isDesktop(context) == false) {
      return size = 140;
    } else {
      return size = 240;
    }
  }

  getHeadlineSize(context) {
    if (Responsive.isDesktop(context) == false) {
      return textSize = Theme.of(context).textTheme.headline3;
    } else {
      return textSize = Theme.of(context).textTheme.headline2;
    }
  }
}
