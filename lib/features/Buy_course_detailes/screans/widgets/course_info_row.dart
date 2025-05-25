import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';

class CourseInfoRow extends StatelessWidget {
  const CourseInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                'Level 1 Chinese course',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        verticalSpace(14.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.punch_clock_rounded, size: 15.sp),
              horizontalSpace(5.w),
              Text('4h 30m',
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold)),
              const Spacer(),
              Container(
                height: 30.h,
                width: 45.w,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Text(
                    '\$74',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        verticalSpace(4.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 17.sp),
              horizontalSpace(3.w),
              Text('4.5',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.video_library, size: 17.sp),
              horizontalSpace(3.w),
              Text('20 Videos',
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
