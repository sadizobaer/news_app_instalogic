import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/app/utils/colors.dart';
import 'package:news_app/app/utils/custom_textfield.dart';
import 'package:news_app/app/utils/images.dart';
import 'package:news_app/app/modules/login/controllers/login_controller.dart';
import 'package:news_app/app/routes/app_pages.dart';

class LoginBody extends GetView<LoginController> {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Center(
            child: SizedBox(
              height: 100.h,
              width: 100.w,
              child: Image.asset(AppImages.loginImage),
            ),
          ),
          SizedBox(height: 40.h),
          buildForm(),
          Obx(
            () => controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : ElevatedButton(
                    onPressed: () {
                      if (controller.formKey.currentState!.validate()) {
                        controller.authenticateUser();
                      }
                    },
                    child: Text(
                      'Login',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: AppColors.white),
                    ),
                  ),
          ),
          SizedBox(height: 8.h),
          buildBottomSection(context),
          const Spacer(),
        ],
      ),
    );
  }

  Form buildForm() {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          CustomTextField(
            hint: 'Enter email',
            icon: Icons.email_outlined,
            controller: controller.emailController,
          ),
          SizedBox(height: 16.h),
          CustomTextField(
            hint: 'Enter password',
            icon: Icons.password,
            controller: controller.passwordController,
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  Row buildBottomSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have account?',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(width: 4.w),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.SIGN_UP);
          },
          child: Text(
            'Sign up'.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
