import 'package:flutter/material.dart';

import '../../util/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
} // BottomNavBar class

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      /// Calls the onTap() function of wanted item of dataList
      onTap: (index) {
        dataList[index].onTap(context);
        setState(() {});
      },

      /// Get items from dataList to build the navigation bar
      items: dataList
          .map((e) =>
              BottomNavigationBarItem(label: e.itemLabel, icon: Icon(e.icon)))
          .toList(),
    );
  } // build method
} // _BottomNavBarState class
