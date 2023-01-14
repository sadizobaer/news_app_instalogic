import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  final bool secure;
  const CustomTextField({
    Key? key,
    required this.hint,
    required this.icon,
    required this.controller,
    this.secure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: secure,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field should not be empty';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(
          icon,
          color: AppColors.black,
          size: 22.sp,
        ),
        hintStyle:
            Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14.sp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }
}
