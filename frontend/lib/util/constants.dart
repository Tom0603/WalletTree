import 'package:flutter/material.dart';

import 'package:frontend/pages/builder_pages/main_page_builder.dart';
import 'package:frontend/pages/components/bottomnavbar.dart';
import 'package:frontend/pages/components/sidebar.dart';

/// Includes all the pages for the SideBar/NavBar
class PageList {
  static const dashboard = MainPageBuilder(page: "dashboard");

  //static const holdings = MainPageBuilder(page: "holdings");
  static const analysis = MainPageBuilder(page: "analysis");
  static const activities = MainPageBuilder(page: "activities");
  static const dividends = MainPageBuilder(page: "dividends");
  static const settings = MainPageBuilder(page: "settings");
}

/// Includes all the icons for the SideBar/NavBar
class IconsList {
  static const dashboardIcon = Icons.dashboard;
  static const holdingsIcon = Icons.money;
  static const analysisIcon = Icons.pie_chart;
  static const activitiesIcon = Icons.add_box;
  static const dividendsIcon = Icons.assessment;
  static const settingsIcon = Icons.settings;
}

/// This class [NavDataModel] if the parent class of the [dataList].
/// The [dataList] is the data model holding the essential information for
/// building the [SideBar] and the [BottomNavBar].
/// It contains information regarding the itemLabel, icon and the onTap() function.
/// The onTap() function navigates to desired page.
class NavDataModel {
  String itemLabel;
  IconData icon;
  Function onTap;

  NavDataModel({
    required this.itemLabel,
    required this.icon,
    required this.onTap,
  });
}

List<NavDataModel> dataList = [
  NavDataModel(
    itemLabel: "Dashboard",
    icon: IconsList.dashboardIcon,
    onTap: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageList.dashboard),
      );
    },
  ),
  NavDataModel(
    itemLabel: "Analysis",
    icon: IconsList.analysisIcon,
    onTap: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageList.analysis),
      );
    },
  ),
  NavDataModel(
    itemLabel: "Activities",
    icon: IconsList.activitiesIcon,
    onTap: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageList.activities),
      );
    },
  ),
  NavDataModel(
    itemLabel: "Dividends",
    icon: IconsList.dividendsIcon,
    onTap: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageList.dividends),
      );
    },
  ),
];
