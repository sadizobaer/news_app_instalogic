import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/utils/custom_appbar.dart';
import 'package:news_app/app/modules/login/controllers/login_controller.dart';
import 'login_body.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: const [
          CustomAppbar(title: 'Login'),
          Expanded(
            child: LoginBody(),
          ),
        ],
      ),
    );
  }
}
