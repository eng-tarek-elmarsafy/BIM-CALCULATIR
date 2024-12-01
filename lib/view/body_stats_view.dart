import 'package:flutter/material.dart';

import '../widget/gender_card.dart';
import '../widget/weight_age_selector.dart';
import '../widget/height_picker_widget.dart';

class BodyStatsView extends StatelessWidget {
  const BodyStatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'BIM CALCULATIR',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: false,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            GenderCard(),
            HeightPicker(),
            Expanded(
              child: Row(
                children: [
                  WeightOrAgeSelector(
                    text: 'WEIGHT',
                  ),
                  WeightOrAgeSelector(
                    text: 'AGE',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          backgroundColor: const Color.fromARGB(255, 217, 51, 88),
        ),
        onPressed: () {},
        child: const Text(
          'CALCULATE',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
