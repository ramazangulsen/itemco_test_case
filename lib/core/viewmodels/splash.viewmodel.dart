import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/models/http_response.model.dart';
import 'package:ny_times_articles/core/services/article_services.dart';
import 'package:ny_times_articles/core/viewmodels/base/base.viewmodel.dart';
import 'package:ny_times_articles/utils/route_names.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SplashViewModel extends BaseViewModel {
  SplashViewModel({required super.context});

  ArticleService articleServices = ArticleService();

  @override
  Future initViewmodel() async {
    await getArticlesAndSetToProvider();
    Future.delayed(const Duration(seconds: 0), () {
      Navigator.of(context).pushReplacementNamed(RouteNames.article);
    });
    return super.initViewmodel();
  }

  getArticlesAndSetToProvider() async {
    HttpResponseModel articleResponse = await articleServices.getArticles(
      period: 7,
      apiKey: dotenv.env['API_KEY'] ?? 'emptyApiKey',
    );
    articleResponse.articles.sort((a, b) {
      return b.publishedDate.compareTo(a.publishedDate);
    });
    super.articleProvider.articles = articleResponse.articles;
  }
}
