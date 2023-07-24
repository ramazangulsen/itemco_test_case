import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/models/widget.colors.model.dart';

class ThemeModel {
  String corporate;
  String name;
  String selector;
  WidgetColorsModel widgetColors;
  ThemeData theme;

  ThemeModel({
    required this.corporate,
    required this.name,
    required this.selector,
    required this.widgetColors,
    required this.theme,
  });

  factory ThemeModel.fromJson(Map<String, dynamic> map) {
    ThemeData convertedTheme = map["theme"] as ThemeData;
    ThemeData finalTheme = convertedTheme.copyWith(
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),
    );

    return ThemeModel(
      corporate: map["corporate"],
      name: map["name"],
      selector: map["selector"],
      widgetColors: WidgetColorsModel.fromJson(map["widgetColors"]),
      theme: finalTheme,
    );
  }
}
