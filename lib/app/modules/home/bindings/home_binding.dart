import 'package:get/get.dart';
import 'package:news_app/app/data/repositories/article_repository.dart';
import 'package:news_app/app/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(articleRepository:ArticleRepository()),
    );
  }
}
