import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/routes/app_pages.dart';
import 'package:news_app/app/data/repositories/firebase_repository.dart';

class SplashController extends GetxController {
  FirebaseRepository firebaseRepository;
  SplashController({required this.firebaseRepository});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 1), (){
      if (firebaseRepository.authInstance.currentUser != null) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.offAllNamed(Routes.LOGIN);
      }
    });
    super.onInit();
  }
}
