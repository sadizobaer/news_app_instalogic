import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/app/utils/colors.dart';
import 'package:news_app/app/data/models/saved_article_model.dart';

import 'favorite_details_info.dart';

class FavoriteDetails extends StatelessWidget {
  final SavedArticleModel savedArticleModel;
  const FavoriteDetails({Key? key, required this.savedArticleModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildDetailsImage(),
          SizedBox(height: 16.h),
          FavoriteDetailsInfo(savedArticleModel: savedArticleModel),
        ],
      ),
    );
  }
  Container buildDetailsImage() {
    return Container(
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(savedArticleModel.imageUrl),
            fit: BoxFit.fill,
          )),
      child: Padding(
        padding: EdgeInsets.only(top: 32.h, left: 20.w),
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Align(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.arrow_back,
              size: 22.sp,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
