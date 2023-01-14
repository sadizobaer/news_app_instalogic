import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class AppTheme {
  static primaryTheme() {
    return ThemeData(
      primaryColor: AppColors.black,
      primarySwatch:  const MaterialColor(
        0xFF000000,
        <int, Color>{
          50: Color(0xFF000000),
          100: Color(0xFF000000),
          200: Color(0xFF000000),
          300: Color(0xFF000000),
          400: Color(0xFF000000),
          500: Color(0xFF000000),
          600: Color(0xFF000000),
          700: Color(0xFF000000),
          800: Color(0xFF000000),
          900: Color(0xFF000000),
        },
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(328.w, 54.h),
          primary: AppColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 6.h,
          ),
        ),
      ),
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
