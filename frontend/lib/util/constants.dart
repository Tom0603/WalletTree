import 'package:flutter/material.dart';

import 'package:frontend/pages/builder_pages/dashboard_builder.dart';
import 'package:frontend/pages/builder_pages/holdings_builder.dart';
import 'package:frontend/pages/builder_pages/analysis_builder.dart';
import 'package:frontend/pages/builder_pages/activities_builder.dart';
import 'package:frontend/pages/builder_pages/dividends_builder.dart';
import 'package:frontend/pages/settings_page.dart';

/// Includes all the pages for the SideBar/NavBar
class PageList {
  static const dashboard = DashboardBuilder();
  static const holdings = HoldingsBuilder();
  static const analysis = AnalysisBuilder();
  static const activities = ActivitiesBuilder();
  static const dividends = DividendsBuilder();
  static const settings = SettingsPage();
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
