import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/utils/images.dart';
import 'package:learn_chinese/core/utils/values.dart';
class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
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
        Image.asset(AppImages.onBoarding3,height:250.h ,width: 333.w,),
        SizedBox(height: 50.h,),
        Text(
          AppTexts.title3,
          style: TextStyle(
            fontSize: 26.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20.h,),
        Text(
          AppTexts.description3,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.black,
          ),
        ),
      ],
    )
    );
  }
}
