import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class AppTheme {
  static primaryTheme() {
    return ThemeData(
      //primaryColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.15,
          color: AppColors.black,
        ),
        subtitle1: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.15,
          color: AppColors.black,
        ),
        subtitle2: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.1,
          color: AppColors.black,
        ),
        bodyText1: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          color: AppColors.black,
        ),
        bodyText2: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: AppColors.black,
        ),
      ),
    );
  }
}
