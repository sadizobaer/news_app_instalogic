import 'package:news_app/app/utils/api_client.dart';
import 'package:news_app/app/utils/strings.dart';

class ArticleRepository{
  getArticles() async{
    final response = await ApiClient.instance.get(
        url: AppStrings.articlesUrl,
        params: {
          'apiKey': AppStrings.apiKey,
          'q':'all',
          'from': '2022-12-14',
        }
    );
    return response;
  }
}