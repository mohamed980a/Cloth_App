import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseInfoRow extends StatelessWidget {
  final int levels;
  final int videos;

  const CourseInfoRow({super.key, required this.levels, required this.videos});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$levels levels'),
        Row(
          children: [
            Icon(Icons.star, size: 18.sp, color: Colors.amber),
            SizedBox(width: 4.w),
            Text('Progress'),
          ],
        ),
        Row(
          children: [
            Icon(Icons.video_library, size: 18.sp),
            SizedBox(width: 4.w),
            Text('$videos videos'),
          ],
        ),
      ],
    );
  }
}
