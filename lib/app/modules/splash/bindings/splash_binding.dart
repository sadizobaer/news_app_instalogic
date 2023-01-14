import 'package:get/get.dart';
import 'package:news_app/app/data/repositories/firebase_repository.dart';
import 'package:news_app/app/modules/splash/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(firebaseRepository: FirebaseRepository()),
    );
  }
}
