import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/models/article_model.dart';
import 'package:ny_times_articles/core/viewmodels/base/base.viewmodel.dart';
import 'package:ny_times_articles/presentation/view/article_detail.page.dart';

class ArticleViewModel extends BaseViewModel {
  ArticleViewModel({required super.context});

  List<Article> get articles => super.articleProvider.articles;

  navigateToArticleDetailView(Article article) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ArticleDetailView(article: article),
      ),
    );
  }
}
