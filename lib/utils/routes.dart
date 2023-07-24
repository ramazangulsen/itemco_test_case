import 'package:flutter/material.dart';
import 'package:ny_times_articles/presentation/pages/article_page.dart';
import 'package:ny_times_articles/presentation/pages/splash_page.dart';

Map<String, WidgetBuilder> routes(BuildContext context) {
  return {
    '/splash': (context) => const SplashPage(),
    '/article': (context) => const ArticlePage(),
  };
}
