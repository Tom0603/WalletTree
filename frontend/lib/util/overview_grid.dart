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
            color: const Color.fromARGB(100, 32, 32, 32),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 20.0),
                  child: Text(
                    boxName,
                    style: const TextStyle(
                      color: Colors.cyan,
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
