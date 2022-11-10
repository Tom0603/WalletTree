import 'package:flutter/material.dart';

class OverviewGrid extends StatelessWidget {
  final String boxName;

  const OverviewGrid({super.key, required this.boxName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.deepPurple,
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    boxName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
