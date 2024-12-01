import 'package:flutter/material.dart';

import '../widget/gender_icon_widget.dart';
import '../widget/weight_age_selector.dart';
import '../widget/height_picker_widget.dart';

class BodyStatsView extends StatefulWidget {
  const BodyStatsView({super.key});

  @override
  State<BodyStatsView> createState() => _BodyStatsViewState();
}

class _BodyStatsViewState extends State<BodyStatsView> {
  String? selectedGender;

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  GenderIconWidget(
                    iconGender: Icons.male,
                    genderText: 'Male',
                    isSelected: selectedGender == 'Male',
                    onTap: () {
                      setState(() {
                        selectedGender = 'Male';
                      });
                    },
                  ),
                  GenderIconWidget(
                    iconGender: Icons.female,
                    genderText: 'Female',
                    isSelected: selectedGender == 'Female',
                    onTap: () {
                      setState(() {
                        selectedGender = 'Female';
                      });
                    },
                  ),
                ],
              ),
            ),
            const HeightPicker(),
            const Expanded(
              child: Row(
                children: [
                  WeightOrAgeSelector(
                    text: 'WEIGHT',
                  ),
                  WeightOrAgeSelector(
                    text: 'WEIGHT',
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

    //   );
    // }
  }
}
