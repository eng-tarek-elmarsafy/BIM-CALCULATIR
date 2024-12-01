import 'package:flutter/material.dart';

import 'view/body_stats_view.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 3, 6, 25),
      ),
      debugShowCheckedModeBanner: false,
      home: const BodyStatsView(),
    );
  }
}
