import 'package:flutter/material.dart';
import 'package:frontend/pages/components/line_chart_card.dart';
import 'package:frontend/pages/components/pie_chart_card.dart';

import '../generated/l10n.dart';
import 'components/sidebar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  /// Padding constants
  final horizontalPadding = 40.0;
  final verticalPadding = 40.0;

  /// App Bar value
  double portfolioValue = 123.456;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: const SideBar().getSidebarIcon(context),
        title: Text(
          "${S.of(context).portfolioValue}: $portfolioValue€",
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      drawer: const SideBar(),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: const [
              LineChartCard(),
              PieChartCard(),
            ],
          ),
        ),
      ),
    );
  }
}
