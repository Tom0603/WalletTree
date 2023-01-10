import 'package:flutter/material.dart';
import 'package:frontend/pages/components/bottomnavbar.dart';
import 'package:frontend/pages/settings_page.dart';

import '../../generated/l10n.dart';
import '../../responsive/responsive.dart';
import '../activities_page.dart';
import '../analysis_page.dart';
import '../components/sidebar.dart';
import '../dashboard_page.dart';
import '../dividends_page.dart';
import '../holdings_page.dart';

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
          child: Column(
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
        drawer: const SideBar(),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
    if (page == S.of(context).dashboard) {
      return getDashboardPage(context);
    } else if (page == S.of(context).holdings) {
      return getHoldingsPage(context);
    } else if (page == S.of(context).analysis) {
      return getAnalysisPage(context);
    } else if (page == S.of(context).activities) {
      return getActivitiesPage(context);
    } else if (page == S.of(context).dividends) {
      return getDividendsPage(context);
    } else if (page == S.of(context).settings) {
      return getSettingsPage(context);
    }
  }

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
