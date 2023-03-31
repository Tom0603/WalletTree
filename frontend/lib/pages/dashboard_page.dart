import 'package:flutter/material.dart';
import 'package:frontend/util/communication_handler.dart';

import '../generated/l10n.dart';
import '../models/orders.dart';
import 'components/sidebar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final TextEditingController _controller = TextEditingController();
  Future<Orders>? _futureOrders;
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
      body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureOrders == null) ? buildColumn() : buildFutureBuilder(),
        ),
    );
  }
  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureOrders = OrdersHandler().addOrders(_controller.text);
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }
  FutureBuilder<Orders> buildFutureBuilder() {
    return FutureBuilder<Orders>(
      future: _futureOrders,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.ticker);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}

