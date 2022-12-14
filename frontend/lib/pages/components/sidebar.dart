import 'package:flutter/material.dart';

import 'package:frontend/util/constants.dart';

import 'package:frontend/generated/l10n.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    S localeStrings = S.of(context);

    return Drawer(
      backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
      child: ListView(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.candlestick_chart_outlined,
              size: 100,
            ),
          ),
          DrawerListTile(
            title: localeStrings.dashboard,
            icon: IconsList.dashboardIcon,
            page: PageList.dashboard,
          ),
          DrawerListTile(
            title: localeStrings.holdings,
            icon: IconsList.holdingsIcon,
            page: PageList.holdings,
          ),
          DrawerListTile(
            title: localeStrings.analysis,
            icon: IconsList.analysisIcon,
            page: PageList.analysis,
          ),
          DrawerListTile(
            title: localeStrings.activities,
            icon: IconsList.activitiesIcon,
            page: PageList.activities,
          ),
          DrawerListTile(
            title: localeStrings.dividends,
            icon: IconsList.dividendsIcon,
            page: PageList.dividends,
          ),
          const SizedBox(height: 300),
          const DrawerListTile(
              title: "Settings",
              icon: IconsList.settingsIcon,
              page: PageList.settings),
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
  final IconData icon;
  final Widget page;

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
