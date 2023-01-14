import 'package:get/get.dart';
import 'package:news_app/app/data/repositories/firebase_repository.dart';

import '../controllers/my_favorites_controller.dart';

class MyFavoritesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyFavoritesController>(
      () => MyFavoritesController(firebaseRepository: FirebaseRepository()),
    );
  }
}
