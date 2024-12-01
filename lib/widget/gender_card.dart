import 'package:flutter/material.dart';

import 'gender_icon_widget.dart';

class GenderCard extends StatefulWidget {
  const GenderCard({super.key});

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  int? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          GenderIconWidget(
            iconGender: Icons.male,
            genderText: 'Male',
            isSelected: selectedGender == 0,
            onTap: () {
              setState(() {
                selectedGender = 0;
              });
            },
          ),
          GenderIconWidget(
            iconGender: Icons.female,
            genderText: 'Female',
            isSelected: selectedGender == 1,
            onTap: () {
              setState(() {
                selectedGender = 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
