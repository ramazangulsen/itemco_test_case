import 'package:itemco_test_case/core/models/article_model.dart';
import 'package:itemco_test_case/core/models/base/base.model.dart';

class HttpResponseModel {
  String status;
  String copyright;
  int numResults;
  List<Article> articles;

  HttpResponseModel(
      {required this.status,
      required this.copyright,
      required this.numResults,
      required this.articles});

  factory HttpResponseModel.fromJson(Map<String, dynamic> json) =>
      HttpResponseModel(
        articles: BaseModel.listConverter(json['results'])
            .map((e) => Article.fromJson(e))
            .toList(),
        status: BaseModel.stringConverter(json['status']),
        numResults: BaseModel.intConverter(json['num_results']),
        copyright: BaseModel.stringConverter(json['copyright']),
      );

  Map<String, dynamic> toMap() => {
        "articles": articles.map((e) => e.toMap()).toList(),
        "status": status,
        "numResults": numResults,
        "copyright": copyright,
      };
}
