import 'package:itemco_test_case/core/models/http_response.model.dart';

abstract class ArticleRepository {
  Future<HttpResponseModel> getArticles({
    required int period,
    required String apiKey,
  });
}
