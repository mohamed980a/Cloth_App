import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';

class LessonListItem extends StatelessWidget {
  final String title;
  final String duration;

  const LessonListItem({
    super.key,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.play_circle,
            size: 30.sp,
            color: Color.fromARGB(255, 4, 135, 243),
          ),
          horizontalSpace(10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(5.h),
              Text(duration),
            ],
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 18.sp,
            color: Color.fromARGB(255, 4, 135, 243),
          ),
        ],
      ),
    );
  }
}
