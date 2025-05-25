import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/theaming/styles.dart';

class AleardyHaveAnAccount extends StatelessWidget {
  final String description;
  final String btnText;
  final VoidCallback? onTap;

  const AleardyHaveAnAccount({
    Key? key,
    required this.description,
    required this.btnText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          text: description,
          style: TextStyles.font20Black.copyWith(fontSize: 14.sp),
          children: [
            TextSpan(
              text: ' $btnText',
              style: TextStyles.font20Black.copyWith(fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
