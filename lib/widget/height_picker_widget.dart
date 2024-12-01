import 'package:flutter/material.dart';

class HeightPicker extends StatefulWidget {
  const HeightPicker({super.key});

  @override
  State<HeightPicker> createState() => _HeightPickerState();
}

class _HeightPickerState extends State<HeightPicker> {
  double hieght = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 9, 11, 34),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'HEIGHT',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${hieght.toInt()}',
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'cm',
                    style: TextStyle(
                      fontSize: 25,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Slider(
              value: hieght,
              onChanged: ((value) {
                hieght = value;
                setState(() {});
              }),
              max: 190,
              overlayColor: WidgetStateProperty.all(
                (const Color.fromARGB(255, 217, 51, 88)),
              ),
              divisions: 190,
              label: hieght.round().toString(),
              activeColor: Colors.white,
              thumbColor: const Color.fromARGB(255, 217, 51, 88),
            ),
          ],
        ),
      ),
    );
  }
}
