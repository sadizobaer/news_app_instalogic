import 'package:get/get.dart';
import 'package:news_app/app/data/repositories/firebase_repository.dart';

import '../../../data/models/saved_article_model.dart';

class MyFavoritesController extends GetxController {
  FirebaseRepository firebaseRepository;
  MyFavoritesController({required this.firebaseRepository});

  Stream<List<SavedArticleModel>> readArticles() {
    return  firebaseRepository.favoritesArticles();

  }
}
