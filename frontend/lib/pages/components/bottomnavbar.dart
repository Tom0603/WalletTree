import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../util/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
} // BottomNavBar class

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      /// Note that "Dividends Page" is not available in the Bottom Navigation Bar,
      /// to make it look less chunky. The page will be included in the
      /// "Dashboard" page to make the app more compact for mobile users.
      ///
      /// ITEMS
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(IconsList.dashboardIcon),
          label: S.of(context).dashboard,
        ),
        BottomNavigationBarItem(
          icon: const Icon(IconsList.holdingsIcon),
          label: S.of(context).holdings,
        ),
        BottomNavigationBarItem(
          icon: const Icon(IconsList.analysisIcon),
          label: S.of(context).analysis,
        ),
        BottomNavigationBarItem(
          icon: const Icon(IconsList.activitiesIcon),
          label: S.of(context).activities,
        ),
        BottomNavigationBarItem(
          icon: const Icon(IconsList.settingsIcon),
          label: S.of(context).settings,
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  } // build method

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  } // _onItemTapped method
} // _BottomNavBarState class
