import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseHeader extends StatelessWidget {
  const CourseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/video.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 17.h,
            left: 30.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 247, 247),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/mohamed.png',
                      width: 24.w,
                      height: 24.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    'Beginners',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
