import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          width: 150.w,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 7, 99, 173),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Center(
            child: Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
