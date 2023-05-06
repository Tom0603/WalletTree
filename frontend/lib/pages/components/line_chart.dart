import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatelessWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <LineSeries<StockPriceData, String>>[
          LineSeries<StockPriceData, String>(
              // Bind data source
              dataSource: <StockPriceData>[
                StockPriceData('Jan', 35),
                StockPriceData('Feb', 28),
                StockPriceData('Mar', 34),
                StockPriceData('Apr', 32),
                StockPriceData('May', 40),
                StockPriceData('Jun', 35),
                StockPriceData('Jul', 28),
                StockPriceData('Aug', 34),
                StockPriceData('Sep', 32),
                StockPriceData('Oct', 40),
                StockPriceData('Nov', 35),
                StockPriceData('Dec', 28)
              ],
              xValueMapper: (StockPriceData stock, _) => stock.year,
              yValueMapper: (StockPriceData stock, _) => stock.price)
        ],
      ),
    );
  }
}

class StockPriceData {
  StockPriceData(this.year, this.price);

  final String year;
  final double price;
}
