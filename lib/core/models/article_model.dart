import 'package:ny_times_articles/core/models/base/base.model.dart';
import 'package:ny_times_articles/core/models/media_model.dart';

class Article {
  String uri;
  String url;
  int id;
  int assetId;
  String source;
  String publishedDate;
  String updated;
  String section;
  String subsection;
  String nytdsection;
  String adxKeywords;
  dynamic column;
  String byline;
  String type;
  String title;
  String abstract;
  List<String> desFacet;
  List<String> orgFacet;
  List<String> perFacet;
  List<String> geoFacet;
  List<Media> media;
  int etaId;

  Article(
      {required this.uri,
      required this.url,
      required this.id,
      required this.assetId,
      required this.source,
      required this.publishedDate,
      required this.updated,
      required this.section,
      required this.subsection,
      required this.nytdsection,
      required this.adxKeywords,
      required this.column,
      required this.byline,
      required this.type,
      required this.title,
      required this.abstract,
      required this.desFacet,
      required this.orgFacet,
      required this.perFacet,
      required this.geoFacet,
      required this.media,
      required this.etaId});

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        abstract: BaseModel.stringConverter(json['abstract']),
        adxKeywords: BaseModel.stringConverter(json['adx_keywords']),
        assetId: BaseModel.intConverter(json['asset_id']),
        byline: BaseModel.stringConverter(json['byline']),
        column: BaseModel.stringConverter(json['column']),
        desFacet: BaseModel.listConverter(json['des_facet'])
            .map((e) => e.toString())
            .toList(),
        etaId: BaseModel.intConverter(json['eta_id']),
        geoFacet: BaseModel.listConverter(json['geo_facet'])
            .map((e) => e.toString())
            .toList(),
        id: BaseModel.intConverter(json['id']),
        media: BaseModel.listConverter(json['media'], fallbackValue: [])
            .map((e) => Media.fromJson(e))
            .toList(),
        nytdsection: BaseModel.stringConverter(json['nytdsection']),
        orgFacet: BaseModel.listConverter(json['org_facet'])
            .map((e) => e.toString())
            .toList(),
        perFacet: BaseModel.listConverter(json['per_facet'])
            .map((e) => e.toString())
            .toList(),
        publishedDate: BaseModel.stringConverter(json['published_date']),
        section: BaseModel.stringConverter(json['section']),
        source: BaseModel.stringConverter(json['source']),
        subsection: BaseModel.stringConverter(json['subsection']),
        title: BaseModel.stringConverter(json['title']),
        type: BaseModel.stringConverter(json['type']),
        updated: BaseModel.stringConverter(json['updated']),
        url: BaseModel.stringConverter(json['url']),
        uri: BaseModel.stringConverter(json['uri']),
      );

  Map<String, dynamic> toMap() => {
        "uri": uri,
        "url": url,
        "id": id,
        "assetId": assetId,
        "source": source,
        "publishedDate": publishedDate,
        "updated": updated,
        "section": section,
        "subsection": subsection,
        "nytdsection": nytdsection,
        "adxKeywords": adxKeywords,
        "column": column,
        "byline": byline,
        "type": type,
        "title": title,
        "abstract": abstract,
        "desFacet": desFacet,
        "orgFacet": orgFacet,
        "perFacet": perFacet,
        "geoFacet": geoFacet,
        "media": media.map((e) => e.toMap()).toList(),
        "etaId": etaId,
      };
}
