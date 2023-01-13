import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/app/data/models/articles_model.dart';
import 'package:news_app/app/modules/home/views/article_details/article_details.dart';
import 'package:news_app/app/utils/colors.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  const ArticleCard({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(ArticleDetails(article: article));
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(12.w, 4.h, 12.w, 4.h),
        padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 8.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          children: <Widget>[
            buildCardImage(),
            SizedBox(width: 16.w),
            buildCardInfo(context),
          ],
        ),
      ),
    );
  }

  Flexible buildCardInfo(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${article.title}',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 8.h),
          Text(
            '${article.description}',
            style: Theme.of(context).textTheme.bodyText2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            maxLines: 3,
            softWrap: true,
          ),
        ],
      ),
    );
  }

  SizedBox buildCardImage() {
    return SizedBox(
      height: 90.h,
      width: 110.w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.r),
        child: Image.network(
          '${article.urlToImage}',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
