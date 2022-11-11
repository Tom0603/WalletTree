import 'package:flutter/material.dart';
import 'package:frontend/util/overview_grid.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Padding constants
  final horizontalPadding = 40.0;
  final verticalPadding = 40.0;

  // App Bar value
  // TODO: add path to backend to keep value up to date

  double netWorth = 17.839;

  List boxViews = [
    ["Daily"],
    ["Weekly"],
    ["Monthly"],
    ["Yearly"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Net worth: $netWorth€",
          style: const TextStyle(
            color: Colors.cyan,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(1000, 32, 32, 32),
      ),
      backgroundColor: const Color.fromARGB(1000, 32, 32, 32),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Week Overview",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.cyan,
                ),
              ),
            ),
            const SizedBox(height: 10,),

            // grid
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return OverviewGrid(
                    boxName: boxViews[index][0],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
