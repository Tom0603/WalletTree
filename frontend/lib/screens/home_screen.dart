import 'package:flutter/material.dart';
import 'package:frontend/util/overview_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Padding constants
  final horizontalPadding = 40.0;
  final verticalPadding = 40.0;

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
        title: const Text("Overview"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Text(
                "Week Overview",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black54,
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
