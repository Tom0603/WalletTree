import 'package:flutter/material.dart';

import 'package:frontend/pages/components/sidebar.dart';
import 'package:frontend/pages/analysis_page.dart';
import 'package:frontend/responsive/responsive.dart';

class AnalysisBuilder extends StatelessWidget {
  const AnalysisBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideBar(),
              ),
            const Expanded(
              flex: 5,
              child: AnalysisPage(),
            )
          ],
        ),
      ),
    );
  }
}
