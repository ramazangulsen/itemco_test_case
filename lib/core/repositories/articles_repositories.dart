import 'package:ny_times_articles/core/models/http_response.model.dart';

abstract class ArticleRepository {
  Future<HttpResponseModel> getArticles({
    required int period,
    required String apiKey,
  });
}
