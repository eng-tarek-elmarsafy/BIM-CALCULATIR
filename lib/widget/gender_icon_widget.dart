import 'package:flutter/material.dart';

class GenderIconWidget extends StatelessWidget {
  final IconData iconGender;
  final String genderText;
  final bool isSelected;
  final VoidCallback onTap;
  const GenderIconWidget({
    super.key,
    required this.iconGender,
    required this.genderText,
    required this.isSelected,
    required this.onTap,
  });

//  Color.fromARGB(255, 9, 11, 34),
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isSelected
                ? const Color.fromARGB(255, 217, 51, 88)
                : const Color.fromARGB(255, 9, 11, 34),
          ),
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconGender,
                size: 80,
              ),
              Text(
                genderText,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class GenderIconWidget extends StatefulWidget {
//   final IconData iconGender;
//   final String genderText;
//   final bool selected;

//   const GenderIconWidget({
//     super.key,
//     required this.iconGender,
//     required this.genderText,
//     required this.selected,
//   });

//   @override
//   State<GenderIconWidget> createState() => _GenderIconWidgetState();
// }

// class _GenderIconWidgetState extends State<GenderIconWidget> {
//   bool isSelected = false;

//   @override
//   void initState() {
//     super.initState();
//     isSelected = widget.selected; // تعيين الحالة الأولية
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         decoration: BoxDecoration(
//           color: isSelected
//               ? Colors.amber
//               : const Color.fromARGB(255, 9, 11, 34),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         margin: const EdgeInsets.all(16),
//         child: InkWell(
//           onTap: () {
//             setState(() {
//               isSelected = !isSelected; // تغيير الحالة
//             });
//           },
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 widget.iconGender,
//                 size: 80,
//                 color: Colors.white,
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 widget.genderText,
//                 style: const TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
