import 'package:get/get.dart';
import 'package:news_app/app/data/repositories/firebase_repository.dart';
import 'package:news_app/app/modules/sign_up/controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
      () => SignUpController(firebaseRepository: FirebaseRepository()),
    );
  }
}
