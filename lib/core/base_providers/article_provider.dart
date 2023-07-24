import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/models/article_model.dart';

class ArticleProvider extends ChangeNotifier {
  List<Article> articles = [];
}
