import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizOptions extends StatelessWidget {
  final List<String> options;
  final int? selectedIndex;
  final Function(int) onSelect;

  const QuizOptions({
    required this.options,
    required this.selectedIndex,
    required this.onSelect,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 236, 236),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: List.generate(options.length, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 6.h),
            child: GestureDetector(
              onTap: () => onSelect(index),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 14.h),
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? const Color.fromARGB(255, 192, 237, 240)
                      : const Color.fromARGB(255, 216, 216, 216),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: Text(
                    options[index],
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
