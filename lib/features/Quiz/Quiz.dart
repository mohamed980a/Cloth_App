import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/features/Quiz/screens/widgets/NextButton.dart';
import 'package:learn_chinese/features/Quiz/screens/widgets/QuizHeader.dart';
import 'package:learn_chinese/features/Quiz/screens/widgets/QuizOptions.dart';
import 'package:learn_chinese/features/Quiz/screens/widgets/QuizProgressBar.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 2;
  int totalQuestions = 25;
  int? selectedIndex;

  List<String> options = [
    "Receive",
    "Recieve",
    "Receeve",
    "Receiv",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizProgressBar(current: currentQuestion, total: totalQuestions),
            SizedBox(height: 24.h),
            QuizHeader(current: currentQuestion, total: totalQuestions),
            verticalSpace(20.h),
            QuizOptions(
              options: options,
              selectedIndex: selectedIndex,
              onSelect: (index) {
                setState(() => selectedIndex = index);
              },
            ),
            verticalSpace(100.h),
            NextButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
