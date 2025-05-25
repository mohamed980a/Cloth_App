import 'package:flutter/material.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
class AleardyHaveAccount extends StatelessWidget {
  const AleardyHaveAccount({super.key, required this.description, required this.btnText});

  final String description;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: description,
              style: TextStyles.font14Black
            ),
            TextSpan(
              text: btnText,
              style: TextStyles.font16BlueBold,
            )
          ]
        )
    );
  }
}
