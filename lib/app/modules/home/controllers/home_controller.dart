import 'package:get/get.dart';
import 'package:news_app/app/data/models/articles_model.dart';
import 'package:news_app/app/data/repositories/article_repository.dart';
import 'package:news_app/app/data/repositories/firebase_repository.dart';

class HomeController extends GetxController {
  ArticleRepository articleRepository;
  FirebaseRepository firebaseRepository;
  HomeController({
    required this.articleRepository,
    required this.firebaseRepository,
  });
  @override
  void onInit() {
    getArticles();
    super.onInit();
  }

  RxBool isLoading = false.obs;
  Rx<ArticlesModel?> articles = Rx<ArticlesModel?>(null);

  /// getting articles from news api
  getArticles() async {
    isLoading.value = true;
    final response = await articleRepository.getArticles();
    isLoading.value = false;
    if (response != null) {
      ArticlesModel allArticles = ArticlesModel.fromJson(response);
      articles.value = allArticles;
    }
  }

  /// saved to favorites
  saveToFavorites(Article article) async {
    await firebaseRepository.addToFavorites(
      article.urlToImage!,
      article.title!,
      article.author!,
      article.description!,
    );
  }
}
