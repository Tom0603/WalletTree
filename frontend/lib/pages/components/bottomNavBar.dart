import 'package:flutter/material.dart';

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
      selectedItemColor:
          Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(IconsList.dashboardIcon),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsList.holdingsIcon),
          label: 'Holdings',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsList.analysisIcon),
          label: 'Analysis',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsList.activitiesIcon),
          label: 'Activities',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsList.dividendsIcon),
          label: 'Dividends',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsList.settingsIcon),
          label: 'Settings',
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
