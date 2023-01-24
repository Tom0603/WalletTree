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
      /// Note that "Dividends Page" is not available in the Bottom Navigation Bar,
      /// to make it look less chunky. The page will be included in the
      /// "Dashboard" page to make the app more compact for mobile users.
      ///
      /// ITEMS
      onTap: (index) {
        dataList[index].onTap(context);
        setState(() {});
      },
      items: dataList
          .map((e) =>
              BottomNavigationBarItem(label: e.itemLabel, icon: Icon(e.icon)))
          .toList(),
    );
  } // build method
} // _BottomNavBarState class
