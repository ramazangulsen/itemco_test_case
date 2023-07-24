import 'package:flutter/material.dart';
import 'package:itemco_test_case/presentation/pages/article_page.dart';
import 'package:itemco_test_case/presentation/pages/splash_page.dart';

Map<String, WidgetBuilder> routes(BuildContext context) {
  return {
    //UNSECURE
    '/splash': (context) => const SplashPage(),
    '/article': (context) => const ArticlePage(),
    //'/marketLineSettings': (context) => const MarketLineSettingsPage(),
  };
}
