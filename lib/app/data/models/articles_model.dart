import 'dart:convert';

ArticlesModel? articlesModelFromJson(String str) =>
    ArticlesModel.fromJson(json.decode(str));

String articlesModelToJson(ArticlesModel? data) => json.encode(data!.toJson());

class ArticlesModel {
  ArticlesModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  String? status;
  int? totalResults;
  List<Article?>? articles;

  factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: json["articles"] == null
            ? []
            : json["articles"] == null
                ? []
                : List<Article?>.from(
                    json["articles"]!.map(
                      (x) => Article.fromJson(x),
                    ),
                  ),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": articles == null
            ? []
            : articles == null
                ? []
                : List<dynamic>.from(
                    articles!.map(
                      (x) => x!.toJson(),
                    ),
                  ),
      };
}

class Article {
  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  dynamic publishedAt;
  String? content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: json["publishedAt"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "source": source,
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt,
        "content": content,
      };
}

class Source {
  Source({
    this.id,
    this.name,
  });

  dynamic id;
  String? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
