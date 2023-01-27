import 'package:flutter/material.dart';

import 'package:frontend/pages/components/bottomnavbar.dart';
import '../components/sidebar.dart';
import '../../responsive/responsive.dart';
import '../activities_page.dart';
import '../analysis_page.dart';
import '../dashboard_page.dart';
import '../dividends_page.dart';
import '../holdings_page.dart';
import 'package:frontend/pages/settings_page.dart';

/// This is the main class for building pages.
/// [MainPageBuilder] checks for the used device/screen size with help of [Responsive]
/// It then returns a scaffold consisting of the navigation elements like [SideBar] or
/// [BottomNavBar], and the wanted page using the [getPage] function
class MainPageBuilder extends StatelessWidget {
  const MainPageBuilder({
    Key? key,
    required this.page,
  }) : super(key: key);

  final String page;

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return Scaffold(
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 1,
                child: SideBar(),
              ),
              Expanded(
                flex: 5,
                child: getPage(context, page),
              )
            ],
          ),
        ),
      );
    } else if (Responsive.isTablet(context)) {
      return Scaffold(
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: getPage(context, page),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        bottomNavigationBar: const BottomNavBar(),
        body: SafeArea(
          child: getPage(context, page),
        ),
      );
    }
  }

  /// Get the right Page
  getPage(context, page) {
    if (page == "dashboard") {
      return getDashboardPage(context);
    } else if (page == "holdings") {
      return getHoldingsPage(context);
    } else if (page == "analysis") {
      return getAnalysisPage(context);
    } else if (page == "activities") {
      return getActivitiesPage(context);
    } else if (page == "dividends") {
      return getDividendsPage(context);
    } else if (page == "settings") {
      return getSettingsPage(context);
    }
  }

  /// Functions for returning the right page

  getDashboardPage(context) {
    return const DashboardPage();
  }

  getHoldingsPage(context) {
    return const HoldingsPage();
  }

  getAnalysisPage(context) {
    return const AnalysisPage();
  }

  getActivitiesPage(context) {
    return const ActivitiesPage();
  }

  getDividendsPage(context) {
    return const DividendsPage();
  }

  getSettingsPage(context) {
    return const SettingsPage();
  }
}
