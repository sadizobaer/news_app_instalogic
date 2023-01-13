import 'package:get/get.dart';

import '../controllers/my_favorites_controller.dart';

class MyFavoritesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyFavoritesController>(
      () => MyFavoritesController(),
    );
  }
}
