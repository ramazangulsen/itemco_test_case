import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/base_providers/article_provider.dart';
import 'package:ny_times_articles/core/base_providers/settings.provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderCreator {
  static MultiProvider getProviders({
    required Widget child,
    required List<SingleChildWidget> outerProviders,
    // required AppStatusTrackModel loginTimeoutSettings,
    GlobalKey<NavigatorState>? navigatorKey,
  }) {
    debugPrint("Provider creator başlangıç ${DateTime.now()}");

    return MultiProvider(
      providers: [
        ...outerProviders,
        ChangeNotifierProvider(
          create: (context) => SettingsProvider(
            navigatorKey: navigatorKey,
          ),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => ArticleProvider(),
          lazy: true,
        ),
      ],
      child: child,
    );
  }
}
