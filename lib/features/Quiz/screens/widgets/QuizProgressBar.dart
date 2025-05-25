import 'package:flutter/material.dart';

class QuizProgressBar extends StatelessWidget {
  final int current;
  final int total;

  const QuizProgressBar(
      {required this.current, required this.total, super.key});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: current / total,
      backgroundColor: Colors.grey[200],
      valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
      minHeight: 8,
    );
  }
}
