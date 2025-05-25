import 'package:flutter/material.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/core/theaming/colors.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
class PasswordValidation extends StatelessWidget {
  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinLength;

  const PasswordValidation({super.key, required this.hasUpperCase, required this.hasLowerCase, required this.hasNumber, required this.hasSpecialCharacters, required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          'At least 1 lowercase letter',
          hasLowerCase,
        ),
        verticalSpace(2),
        buildValidationRow(
          'At least 1 UpperCase letter',
          hasUpperCase,
        ),
        verticalSpace(2),
        buildValidationRow(
          'At least 1 Number ',
          hasNumber,
        ),
        verticalSpace(2),
        buildValidationRow(
          'At least 1 SpecialCharacters',
          hasSpecialCharacters,
        ),
        verticalSpace(2),
        buildValidationRow(
          'At least 8 characters long',
          hasMinLength,
        ),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidation) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          // backgroundColor: hasValidation ? Colors.green : Colors.red,
          backgroundColor: AppColors.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font14BlueBold.copyWith(
            decoration: hasValidation ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidation ? AppColors.primary : AppColors.grey,
          )
        ),
      ],
    );

  }

}
