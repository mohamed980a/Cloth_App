import 'package:flutter/material.dart';
import 'package:learn_chinese/core/theaming/colors.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, this.contentPadding, this.focusedBorder, this.enabledBorder, this.inputTextStyle, this.hintStyle, required this.hintText, this.isObscureText, this.suffixIcon, this.prefixIcon, this.backgroundColor, this.controller,  required this.validator});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.primary,
            width: 1.3,
          ),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 1.3,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.error,
            width: 1.3,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.error,
            width: 1.3,
          ),
        ),
        hintStyle: hintStyle ?? font14Grey,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: backgroundColor ?? AppColors.background,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14Black,
      validator: (value) {
          return validator(value);
      }

    );
  }
}
