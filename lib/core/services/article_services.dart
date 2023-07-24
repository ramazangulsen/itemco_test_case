import 'dart:convert';

import 'package:http/http.dart';
import 'package:itemco_test_case/core/models/http_response.model.dart';

import 'package:http/http.dart' as http;
import 'package:itemco_test_case/core/repositories/articles_repositories.dart';

class ArticleService extends ArticleRepository {
  @override
  Future<HttpResponseModel> getArticles({
    required int period,
    required String apiKey,
  }) async {
    Uri url = Uri.parse(
      "https://api.nytimes.com/svc/mostpopular/v2/viewed/$period.json?api-key=$apiKey",
    );

    Response articlesResponse = await http.get(
      url,
    );

    if (articlesResponse.statusCode == 200) {
      return HttpResponseModel.fromJson(jsonDecode(articlesResponse.body));
    }

    return HttpResponseModel.fromJson({});
  }
}
