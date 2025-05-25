import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';

class CourseHeaderInfo extends StatelessWidget {
  final String title;
  final String duration;
  final String videoCount;
  final String rating;
  const CourseHeaderInfo({
    super.key,
    required this.title,
    required this.duration,
    required this.videoCount,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        verticalSpace(15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.punch_clock_rounded,
              color: Colors.black,
              size: 15.sp,
            ),
            horizontalSpace(5.w),
            Text(
              duration,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            horizontalSpace(50.w),
            Icon(Icons.video_library, size: 18.sp),
            horizontalSpace(5.w),
            Text(videoCount),
            horizontalSpace(50.w),
            Icon(Icons.star, size: 18.sp, color: Colors.amber),
            horizontalSpace(5.w),
            Text(rating),
          ],
        ),
      ],
    );
  }
}
