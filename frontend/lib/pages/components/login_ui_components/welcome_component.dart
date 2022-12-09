import 'package:flutter/material.dart';

class WelcomeComponent extends StatelessWidget {
  const WelcomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [

          /// Candlestick icon
          Icon(
            Icons.candlestick_chart_outlined,
            size: 240,
            color: Theme
                .of(context)
                .iconTheme
                .color,
          ),

          /// Hello Text
          Text(
            'Hello There!',
            style: Theme
                .of(context)
                .textTheme
                .headline2,
          ),
          const SizedBox(height: 25),
          Text(
            'Nice to see you here!',
            style: Theme
                .of(context)
                .textTheme
                .headline6,
          ),
        ]
    );
  }
}
