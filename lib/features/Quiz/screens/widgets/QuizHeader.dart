import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizHeader extends StatelessWidget {
  final int current;
  final int total;

  const QuizHeader({required this.current, required this.total, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Question $current / $total"),
        SizedBox(height: 8),
        Text("Spelling",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text(
          "Which word is spelled correctly ?",
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
