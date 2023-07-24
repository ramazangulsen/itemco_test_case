import 'package:itemco_test_case/core/models/base/base.model.dart';
import 'package:itemco_test_case/core/models/media_metadata.model.dart';

class Media {
  String type;
  String subtype;
  String caption;
  String copyright;
  int approvedForSyndication;
  List<MediaMetadata> mediaMetadata;

  Media({
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
    required this.approvedForSyndication,
    required this.mediaMetadata,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        type: BaseModel.stringConverter(json['type']),
        subtype: BaseModel.stringConverter(json['subtype']),
        caption: BaseModel.stringConverter(json['caption']),
        approvedForSyndication:
            BaseModel.intConverter(json['approved_for_syndication']),
        mediaMetadata: BaseModel.listConverter(json['media-metadata'])
            .map((e) => MediaMetadata.fromJson(e))
            .toList(),
        copyright: BaseModel.stringConverter(json['']),
      );
  Map<String, dynamic> toMap() => {
        "type": type,
        "subtype": subtype,
        "caption": caption,
        "approvedForSyndication": approvedForSyndication,
        "mediaMetadata": mediaMetadata.map((e) => e.toMap()).toList(),
        "copyright": copyright,
      };
}
