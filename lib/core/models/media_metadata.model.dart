import 'package:ny_times_articles/core/models/base/base.model.dart';

class MediaMetadata {
  String url;
  String format;
  int height;
  int width;

  MediaMetadata(
      {required this.url,
      required this.format,
      required this.height,
      required this.width});

  factory MediaMetadata.fromJson(Map<String, dynamic> json) => MediaMetadata(
        url: BaseModel.stringConverter(json['url'], fallbackValue: ''),
        format: BaseModel.stringConverter(json['format']),
        height: BaseModel.intConverter(json['height']),
        width: BaseModel.intConverter(json['width']),
      );

  Map<String, dynamic> toMap() => {
        "url": url,
        "format": format,
        "height": height,
        "width": width,
      };
}
