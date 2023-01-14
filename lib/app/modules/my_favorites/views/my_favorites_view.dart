import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/modules/my_favorites/views/favorite_article_card.dart';
import 'package:news_app/app/utils/custom_appbar.dart';
import 'package:news_app/app/modules/my_favorites/controllers/my_favorites_controller.dart';
import 'package:news_app/app/data/models/saved_article_model.dart';

class MyFavoritesView extends GetView<MyFavoritesController> {
  const MyFavoritesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(title: 'Favorites'),
          Expanded(
            child: StreamBuilder<List<SavedArticleModel>>(
              stream: controller.readArticles(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final favorites = snapshot.data;
                  return favorites!.isEmpty
                      ? const Center(child: Text('No data found'))
                      : ListView(
                          children: favorites
                              .map(
                                (e) =>
                                    FavoriteArticleCard(savedArticleModel: e),
                              )
                              .toList(),
                        );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
