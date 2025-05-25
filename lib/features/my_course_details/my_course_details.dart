import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/features/my_course_details/screens/widgets/CourseHeaderInfo.dart';
import 'package:learn_chinese/features/my_course_details/screens/widgets/LessonListItem.dart';
import 'package:learn_chinese/features/my_course_details/screens/widgets/MyCourseAppBar.dart';
import 'package:learn_chinese/features/my_course_details/screens/widgets/TabSwitcher.dart';
import 'package:learn_chinese/features/my_course_details/screens/widgets/coures_image.dart';

class MyCourseDetails extends StatelessWidget {
  const MyCourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCourseAppBar(
        onBackPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              CourseImage(imageUrl: 'assets/images/video2.png'),
              verticalSpace(20.h),
              CourseHeaderInfo(
                title: 'Figma Master Class For Beginners',
                duration: '4h 30m',
                videoCount: '139 videos',
                rating: '4,9',
              ),
              verticalSpace(30.h),
              TabSwitcher(
                onLessonsTap: () {},
                onDescriptionTap: () {},
              ),
              verticalSpace(30.h),
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return LessonListItem(
                      title: 'Figma Master Class For Beginners',
                      duration: '4h 30m',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
