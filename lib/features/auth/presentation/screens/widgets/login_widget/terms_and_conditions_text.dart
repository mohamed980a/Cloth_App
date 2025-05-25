import 'package:flutter/material.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text:TextSpan(

          children: [
            TextSpan(
                text: "By signing up, you agree to our ",
                style: font14Grey
            ),
            TextSpan(
                text: "Terms of Service",
                style: TextStyles.font14Black.copyWith(fontWeight: FontWeight.w800)
            ),
            TextSpan(
                text: " and ",
                style: font14Grey.copyWith(height: 1.5)
            ),
            TextSpan(
                text: "Privacy Policy",
                style: TextStyles.font16Black
            )
          ]
        )
    );
  }
}
