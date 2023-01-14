import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/modules/sign_up/views/registration_body.dart';
import 'package:news_app/app/utils/custom_appbar.dart';
import 'package:news_app/app/modules/sign_up/controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: const [
          CustomAppbar(title: 'Sign Up'),
          Expanded(
            child: RegistrationBody(),
          ),
        ],
      ),
    );
  }
}
