import 'package:flutter/material.dart';

import 'package:frontend/util/constants.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
      child: ListView(
        children: const [
          DrawerHeader(
            child: Icon(
              Icons.candlestick_chart_outlined,
              size: 100,
            ),
          ),
          DrawerListTile(
            title: "Dashboard",
            icon: IconsList.dashboardIcon,
            page: PageList.dashboard,
          ),
          DrawerListTile(
            title: "Holdings",
            icon: IconsList.holdingsIcon,
            page: PageList.holdings,
          ),
          DrawerListTile(
            title: "Analysis",
            icon: IconsList.analysisIcon,
            page: PageList.analysis,
          ),
          DrawerListTile(
            title: "Activities",
            icon: IconsList.activitiesIcon,
            page: PageList.activities,
          ),
          DrawerListTile(
            title: "Dividends",
            icon: IconsList.dividendsIcon,
            page: PageList.dividends,
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.page,
  }) : super(key: key);

  final String title;
  final dynamic icon;
  final dynamic page;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      horizontalTitleGap: 0.5,
      leading: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
        size: 30.0,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
