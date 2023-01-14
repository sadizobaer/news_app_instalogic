import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/app/modules/home/controllers/home_controller.dart';
import 'package:news_app/app/utils/custom_appbar.dart';
import 'package:news_app/app/routes/app_pages.dart';
import 'all_articles/all_articles.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.MY_FAVORITES);
        },
        child: Icon(
          Icons.favorite_border,
          size: 20.sp,
        ),
      ),
      body: Column(
        children: [
          const CustomAppbar(title: 'News'),
          Expanded(
            child: Obx(
              () => controller.articles.value == null
                  ? const Center(child: CircularProgressIndicator())
                  : AllArticles(
                      articles: controller.articles.value?.articles ?? [],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
