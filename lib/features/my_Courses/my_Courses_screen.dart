import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';

import 'package:learn_chinese/features/my_Courses/screens/widgets/course_card.dart';
import 'package:learn_chinese/features/my_Courses/screens/widgets/course_info_row.dart';
import 'package:learn_chinese/features/my_Courses/screens/widgets/course_levels_list.dart';
import 'package:learn_chinese/features/my_Courses/screens/widgets/course_title.dart';
import 'package:learn_chinese/features/my_Courses/screens/widgets/my_courses_app_bar.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final courseName = 'Basic Chinese';
    final levelCount = 4;
    final videoCount = 139;

    return Scaffold(
      appBar: MyCoursesAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 6, offset: Offset(0, 4))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const CourseCard(),
                  verticalSpace(20.h),
                  CourseTitle(title: courseName),
                  verticalSpace(10.h),
                  CourseInfoRow(levels: levelCount, videos: videoCount),
                  verticalSpace(20.h),
                  CourseLevelsList(levelCount: levelCount),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
