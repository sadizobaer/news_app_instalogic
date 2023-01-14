import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/saved_article_model.dart';

class FirebaseRepository {
  final authInstance = FirebaseAuth.instance;
  final cloudInstance = FirebaseFirestore.instance;

  createUserWithEmailAndPassword(String email, String password) async {
    await authInstance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  authenticateUserWithEmailAndPassword(String email, String password) async {
    await authInstance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  favoritesArticles() {
    final articles = cloudInstance.collection('favorites').snapshots().map((event) => event.docs
        .map(
          (e) => SavedArticleModel.fromJson(e.data()),
        )
        .toList());
    return articles;
  }

  addToFavorites(
    String imageUrl,
    String title,
    String author,
    String description,
  ) async {
    final instance = cloudInstance.collection('favorites').doc();
    final article = SavedArticleModel(
      imageUrl: imageUrl,
      title: title,
      author: author,
      description: description,
    );

    final json = article.toJson();
    instance.set(json);
  }
}
