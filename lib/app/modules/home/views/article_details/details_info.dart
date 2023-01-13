import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/app/data/models/articles_model.dart';
import 'package:news_app/app/utils/colors.dart';

class DetailsInfo extends StatelessWidget {
  final Article article;
  const DetailsInfo({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Text(
            '${article.title}'.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.left,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontSize: 18.sp),
          ),
          SizedBox(height: 12.h),
          authorAndFavoriteSection(context),
          SizedBox(height: 12.h),
          Text(
            '${article.description}',
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

  Row authorAndFavoriteSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${article.author}'.toUpperCase(),
          style: Theme.of(context).textTheme.bodyText1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          maxLines: 3,
          softWrap: true,
        ),
        Icon(
          Icons.favorite_border,
          size: 24.sp,
        ),
      ],
    );
  }
}
