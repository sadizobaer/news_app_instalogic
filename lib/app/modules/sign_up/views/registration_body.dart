import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/app/utils/colors.dart';
import 'package:news_app/app/utils/custom_textfield.dart';
import 'package:news_app/app/utils/images.dart';
import 'package:news_app/app/modules/sign_up/controllers/sign_up_controller.dart';

class RegistrationBody extends GetView<SignUpController> {
  const RegistrationBody({Key? key}) : super(key: key);

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
                        controller.createUser();
                      }
                    },
                    child: Text(
                      'Sign Up',
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
            secure: true,
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
            Get.back();
          },
          child: Text(
            'Login'.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
