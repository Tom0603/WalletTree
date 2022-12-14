import 'package:flutter/material.dart';

class DividendsPage extends StatefulWidget {
  const DividendsPage({Key? key}) : super(key: key);

  @override
  State<DividendsPage> createState() => _DividendsPageState();
}

class _DividendsPageState extends State<DividendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dividends",
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
    );
  }
}
