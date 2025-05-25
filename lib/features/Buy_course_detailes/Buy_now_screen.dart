import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/features/Buy_course_detailes/screans/widgets/buy_now_button.dart';
import 'package:learn_chinese/features/Buy_course_detailes/screans/widgets/course_curriculum_list.dart';
import 'package:learn_chinese/features/Buy_course_detailes/screans/widgets/course_details.dart';
import 'package:learn_chinese/features/Buy_course_detailes/screans/widgets/course_header.dart';
import 'package:learn_chinese/features/Buy_course_detailes/screans/widgets/course_info_row.dart';

class BuyNowScreen extends StatelessWidget {
  const BuyNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CourseHeader(),
            verticalSpace(4.h),
            const CourseInfoRow(),
            const CourseDetails(),
            verticalSpace(17.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Course Curriculum',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(18.h),
            const CourseCurriculumList(),
            verticalSpace(20.h),
            const BuyNowButton(),
          ],
        ),
      ),
    );
  }
}
