import 'package:get/get.dart';
import 'package:news_app/app/data/repositories/firebase_repository.dart';
import 'package:news_app/app/modules/login/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(firebaseRepository: FirebaseRepository()),
    );
  }
}
