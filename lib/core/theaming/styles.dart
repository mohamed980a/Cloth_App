import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/theaming/colors.dart';
import 'package:learn_chinese/core/theaming/font_weight_helper.dart';

class TextStyles {


  ////////////////////////// Black Text Styles //////////////////////////

  static TextStyle font32Black = TextStyle(
    fontSize: 32.sp,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font24Black = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font20Black = TextStyle(
    fontSize: 20.sp,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font16Black = TextStyle(
    fontSize: 16.sp,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font14Black = TextStyle(
    fontSize: 14.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.medium,
  );

  ////////////////////////// Blue Text Styles //////////////////////////


  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.primary,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font20BlueBold = TextStyle(
    fontSize: 20.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font16BlueBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font14BlueBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,

  );


  ////////////////////////// White Text Styles //////////////////////////

  static TextStyle font32White = TextStyle(
    fontSize: 32.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font24White = TextStyle(
    fontSize: 24.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font20White = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font16White = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font14White = TextStyle(
    fontSize: 14.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}

////////////////////////// Black Text Styles //////////////////////////
TextStyle font14Grey = TextStyle(
  fontSize: 14.sp,
  color: AppColors.grey,
  fontWeight: FontWeightHelper.regular,
);