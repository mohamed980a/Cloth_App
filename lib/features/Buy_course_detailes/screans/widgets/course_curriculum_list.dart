import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';

class CourseCurriculumList extends StatelessWidget {
  const CourseCurriculumList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            width: 300.w,
            margin: EdgeInsets.only(bottom: 5.h),
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.r),
              color: const Color.fromARGB(255, 221, 240, 255),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Introduction',
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(3.h),
                Text(
                  '3 Videos',
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
