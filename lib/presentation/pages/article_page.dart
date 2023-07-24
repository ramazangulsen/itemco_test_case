import 'package:flutter/material.dart';
import 'package:itemco_test_case/presentation/view/article_view.dart';
import 'package:itemco_test_case_part/config/config.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return articleView ?? const ArticleView();
  }
}
