import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // Padding constants
  final horizontalPadding = 40.0;
  final verticalPadding = 40.0;

  // App Bar value
  double netWorth = 174.839;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Net worth: $netWorth€",
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
