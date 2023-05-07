import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatelessWidget {
  PieChart({Key? key}) : super(key: key);

  final List<ChartData> chartData = [
    ChartData("Apple", 12),
    ChartData("Tesla", 9),
    ChartData("Alphabet", 7),
    ChartData("Plug", 5),
    ChartData("Quanta", 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfCircularChart(
        series: <CircularSeries>[
          PieSeries<ChartData, String>(
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            explode: true,
            explodeGesture: ActivationMode.singleTap,
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}
