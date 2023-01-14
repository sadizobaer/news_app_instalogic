import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:news_app/app/data/repositories/firebase_repository.dart';
import 'package:news_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  FirebaseRepository firebaseRepository;
  LoginController({required this.firebaseRepository});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;

  /// authenticating the user
  authenticateUser() async {
    isLoading.value = true;
    await firebaseRepository.authenticateUserWithEmailAndPassword(
      emailController.text,
      passwordController.text,
    );
    isLoading.value = false;
    Get.offAllNamed(Routes.HOME);
  }
}
