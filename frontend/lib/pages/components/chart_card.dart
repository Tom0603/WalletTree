import 'package:flutter/material.dart';
import 'package:frontend/pages/components/line_chart.dart';

class ChartCard extends StatelessWidget {
  const ChartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 600,
      child: Card(
        color: Theme.of(context).cardColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 5.0,
        margin: const EdgeInsets.all(10.0),
        child: const LineChart(),
      ),
    );
  }
}
