import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NextButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100.w,
        height: 40.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.blueAccent, Color.fromARGB(255, 43, 58, 146)]),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Center(
            child: Text(
              "Next ",
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
          ),
        ),
      ),
    );
  }
}
