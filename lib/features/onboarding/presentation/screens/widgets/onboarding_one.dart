import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/utils/images.dart';
import 'package:learn_chinese/core/utils/values.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../onboarding_screen.dart';
class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key,});

  @override
  Widget build(BuildContext context) {

    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Container(
        height: 830,
        width: 470,
        padding: EdgeInsets.only(top: 90.h),
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/onboarding.png"),
    fit: BoxFit.cover,
    ),
    ),
    child: Column(
            children: [
              Image.asset(AppImages.onBoarding1,height:250.h ,width: 333.w,),
              SizedBox(height: 50.h,),
              Text(
                AppTexts.title1,
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h,),
              Text(
                AppTexts.description1,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  // SmoothPageIndicator(
                  //   controller: controller,
                  //   count:  6,
                  //   axisDirection: Axis.horizontal,
                  //   effect:  ExpandingDotsEffect(
                  //       spacing:  8.0,
                  //       radius:  4.0,
                  //       dotWidth:  24.0,
                  //       dotHeight:  16.0,
                  //       paintStyle:  PaintingStyle.stroke,
                  //       strokeWidth:  1.5,
                  //       dotColor:  Colors.grey,
                  //       activeDotColor:  Colors.indigo
                  //   ),
                  // )

                ],
              )
            ],
    ));
  }
}
