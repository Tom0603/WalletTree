import 'package:flutter/material.dart';

class HoldingsPage extends StatefulWidget {
  const HoldingsPage({Key? key}) : super(key: key);

  @override
  State<HoldingsPage> createState() => _HoldingsPageState();
}

class _HoldingsPageState extends State<HoldingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Holdings",
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
    );
  }
}
