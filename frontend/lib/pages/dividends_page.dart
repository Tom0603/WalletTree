import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import 'components/sidebar.dart';

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
        automaticallyImplyLeading: const SideBar().getSidebarIcon(context),
        title: Text(
          S.of(context).dividends,
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      drawer: const SideBar(),
    );
  }
}
