import 'package:flutter/material.dart';

import 'package:frontend/pages/builder_pages/dashboard_builder.dart';
import 'package:frontend/pages/holdings_page.dart';
import 'package:frontend/pages/analysis_page.dart';
import 'package:frontend/pages/activities_page.dart';
import 'package:frontend/pages/dividends_page.dart';

/// Includes all the pages for the SideBar/NavBar
class PageList {
  static const dashboard = DashboardBuilder();
  static const holdings = HoldingsPage();
  static const analysis = AnalysisPage();
  static const activities = ActivitiesPage();
  static const dividends = DividendsPage();
}

/// Includes all the icons for the SideBar/NavBar
class IconsList {
  static const dashboardIcon = Icons.dashboard;
  static const holdingsIcon = Icons.money;
  static const analysisIcon = Icons.pie_chart;
  static const activitiesIcon = Icons.add_box;
  static const dividendsIcon = Icons.assessment;
}
