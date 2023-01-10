import 'package:flutter/material.dart';

import 'package:frontend/pages/builder_pages/main_page_builder.dart';

/// Includes all the pages for the SideBar/NavBar
class PageList {
  static const dashboard = MainPageBuilder(page: "dashboard");
  static const holdings = MainPageBuilder(page: "holdings");
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
