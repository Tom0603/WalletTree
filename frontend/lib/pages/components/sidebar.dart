import 'package:flutter/material.dart';

import 'package:frontend/util/constants.dart';
import '../../responsive/responsive.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Icon(
              Icons.candlestick_chart_outlined,
              size: 100,
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 1000),
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  horizontalTitleGap: 0.5,
                  title: Text(dataList[index].itemLabel,
                      style: Theme.of(context).textTheme.subtitle1),
                  leading: Icon(
                    dataList[index].icon,
                    color: Theme.of(context).iconTheme.color,
                    size: 30.0,
                  ),
                  onTap: () {
                    dataList[index].onTap(context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Returns boolean value for whether the drawer burger icon should be shown
  getSidebarIcon(context) {
    if (Responsive.isTablet(context)) {
      return true;
    } else {
      return false;
    }
  }
}
