import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:itemco_test_case/core/models/http_response.model.dart';
import 'package:itemco_test_case/core/services/article_services.dart';

void main() {
  test('getArticles returns HttpResponseModel on successful request', () async {
    // Arrange
    final articleService = ArticleService();
    const int testPeriod = 7;
    const String testApiKey = 'CqBUpuKfKSYAyIF5RPqFch62AklqVpIt';

    final response = await articleService.getArticles(
      period: testPeriod,
      apiKey: testApiKey,
    );

    // Assert
    expect(response, isA<HttpResponseModel>());
  });

  test('getArticles returns empty HttpResponseModel on error', () async {
    // Arrange
    final articleService = ArticleService();
    const int testPeriod = -1;
    const String testApiKey = 'wrongApiKey';

    // Act
    final response = await articleService.getArticles(
        period: testPeriod, apiKey: testApiKey);

    // Assert
    expect(response, isA<HttpResponseModel>());
    expect(response.articles.isEmpty, true);
  });
}
