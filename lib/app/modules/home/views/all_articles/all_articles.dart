import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/app/data/models/articles_model.dart';
import 'article_card.dart';

class AllArticles extends StatelessWidget {
  final List<Article?> articles;
  const AllArticles({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return articles.isEmpty
        ? Center(
            child: Text(
              'No data found',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          )
        : ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 8.h),
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return ArticleCard(article: articles[index]!);
            },
          );
  }
}
