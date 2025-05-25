import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';

class TabSwitcher extends StatelessWidget {
  final VoidCallback onLessonsTap;
  final VoidCallback onDescriptionTap;

  const TabSwitcher({
    super.key,
    required this.onLessonsTap,
    required this.onDescriptionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onLessonsTap,
          child: Text(
            'Lessons',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        horizontalSpace(40.w),
        InkWell(
          onTap: onDescriptionTap,
          child: Text(
            'Description',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
