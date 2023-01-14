import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/app/utils/colors.dart';
import 'package:news_app/app/modules/splash/controllers/splash_controller.dart';
import 'package:news_app/app/utils/images.dart';


class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      body: Container(
        height: 690.h,
        width: 360.w,
        color: AppColors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.h,
              width: 150.h,
              child: Image.asset(
                AppImages.regImage,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              'News App',
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w900,
                  ),
            ),
          ],
        ),
      ),
    );

  }
}
