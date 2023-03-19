import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import 'components/sidebar.dart';

import 'package:frontend/util/communication_handler.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final OrdersHandler ordersHandler = OrdersHandler();

  // Padding constants
  final horizontalPadding = 40.0;
  final verticalPadding = 40.0;

  // App Bar value
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
      body: Center(
        child: SafeArea(
          child: FutureBuilder(
            future: ordersHandler.fetchOrders(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            var currentOrder = snapshot.data[index];

                            return ListTile(
                              title: Text(currentOrder.ticker),
                              leading:
                                   Icon(Icons.account_balance_wallet, color: Theme.of(context).iconTheme.color,),
                              subtitle: Text("Buy in: ${currentOrder.price}, Number of shares: ${currentOrder.shares}"),
                              trailing: Text(currentOrder.userEmail, style: Theme.of(context).textTheme.caption,),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                );
              } else if (snapshot.hasError) {
                return Text(
                  "${snapshot.error}",
                  style: const TextStyle(color: Colors.red),
                );
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
