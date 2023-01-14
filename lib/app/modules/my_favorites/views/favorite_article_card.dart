import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/app/data/models/saved_article_model.dart';

import '../../../utils/colors.dart';

class FavoriteArticleCard extends StatelessWidget {
  final SavedArticleModel savedArticleModel;
  const FavoriteArticleCard({Key? key, required this.savedArticleModel,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
  Flexible buildCardInfo(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            savedArticleModel.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 8.h),
          Text(
            savedArticleModel.description,
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
          savedArticleModel.imageUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
