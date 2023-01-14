import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/app/utils/colors.dart';
import 'package:news_app/app/data/models/saved_article_model.dart';

class FavoriteDetailsInfo extends StatelessWidget {
  final SavedArticleModel savedArticleModel;
  const FavoriteDetailsInfo({Key? key, required this.savedArticleModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Text(
            savedArticleModel.title.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 12.h),
          Text(
            savedArticleModel.author.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            maxLines: 3,
            softWrap: true,
          ),
          SizedBox(height: 12.h),
          Text(
            savedArticleModel.description,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(fontSize: 14.sp),
            textAlign: TextAlign.justify,
            softWrap: true,
          ),
          SizedBox(height: 12.h),
          Divider(
            thickness: .6.h,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
