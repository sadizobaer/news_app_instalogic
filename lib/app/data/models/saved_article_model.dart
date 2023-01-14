class SavedArticleModel {
  String imageUrl;
  String title;
  String author;
  String description;

  SavedArticleModel({
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.description,
  });

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "title": title,
        "author": author,
        "description": description,
      };

  static SavedArticleModel fromJson(Map<String, dynamic> json) =>
      SavedArticleModel(
        imageUrl: json['image_url'],
        title: json['title'],
        author: json['author'],
        description: json['description'],
      );
}
