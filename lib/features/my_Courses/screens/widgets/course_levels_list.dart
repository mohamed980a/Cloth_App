import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseLevelsList extends StatelessWidget {
  final int levelCount;
  const CourseLevelsList({super.key, required this.levelCount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: ListView.builder(
        itemCount: levelCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemExtent: 50.h,
        itemBuilder: (context, index) {
          return Container(
            width: 200.w,
            margin: EdgeInsets.symmetric(vertical: 6.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green.shade100,
                  Colors.blue.shade100,
                ],
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Center(
              child: Text(
                'Level ${index + 1}',
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
          );
        },
      ),
    );
  }
}
