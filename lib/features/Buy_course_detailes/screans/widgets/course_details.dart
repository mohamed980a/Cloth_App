import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(14.h),
          Text(
            'Course Details',
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
          ),
          verticalSpace(4.h),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Text(
              'This course is designed for beginners who want to learn Chinese. '
              'It covers basic vocabulary, grammar, and pronunciation. '
              'The course includes 20 video lessons, quizzes, and interactive exercises '
              'to help you practice your skills...',
              style: TextStyle(fontSize: 10.sp, height: 1.5),
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}
