import 'package:flutter/material.dart';
import 'package:ny_times_articles/presentation/view/article_view.dart';
import 'package:ny_times_articles_part/config/config.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return articleView ?? const ArticleView();
  }
}
