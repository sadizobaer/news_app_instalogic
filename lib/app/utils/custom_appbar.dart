import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  const CustomAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
       title,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: AppColors.white, fontSize: 18.sp),
      ),
      centerTitle: true,
    );
  }
}
