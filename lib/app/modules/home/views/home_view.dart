import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/app/modules/home/controllers/home_controller.dart';
import 'package:news_app/app/utils/colors.dart';
import 'all_articles/all_articles.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'News',
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: AppColors.white, fontSize: 18.sp),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.favorite_border,
          size: 20.sp,
        ),
      ),
      body: Obx(
        () => controller.articles.value == null
            ? const Center(child: CircularProgressIndicator())
            : AllArticles(
                articles: controller.articles.value?.articles ?? [],
              ),
      ),
    );
  }
}
