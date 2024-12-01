import 'package:flutter/material.dart';

class WeightOrAgeSelector extends StatefulWidget {
  final String text;
  const WeightOrAgeSelector({
    super.key,
    required this.text,
  });

  @override
  State<WeightOrAgeSelector> createState() => _WeightOrAgeSelectorState();
}

class _WeightOrAgeSelectorState extends State<WeightOrAgeSelector> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Expanded(
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 9, 11, 34),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: const TextStyle(fontSize: 25),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        counter > 0 ? counter-- : counter = 0;
                      });
                    },
                    child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 109, 107, 107),
                      radius: 25,
                      child: Icon(
                        Icons.remove,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        counter < 200 ? counter++ : counter = 200;
                      });
                    },
                    child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 109, 107, 107),
                      radius: 25,
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
