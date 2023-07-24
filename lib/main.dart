import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/services/theme.service.dart';
import 'package:ny_times_articles/presentation/view/base/itemco_main.dart';
import 'package:ny_times_articles/utils/route_names.dart';
import 'package:ny_times_articles/utils/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() {
  runZonedGuarded(() async {
    await ThemeService().init();
    await dotenv.load(fileName: ".env");
    runApp(
      ItemcoApp(),
    );
  }, (error, stack) {
    //  FirebaseCrashlytics.instance.recordError(error, stack);
  });
}

class ItemcoApp extends StatelessWidget {
  ItemcoApp({super.key});

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return ItemcoMain(
      navigatorKey: navigatorKey,
      child: MaterialApp(
        scrollBehavior: const ScrollBehavior().copyWith(
            overscroll: false, physics: const ClampingScrollPhysics()),
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        title: 'Itemco Test Case',
        theme: ThemeService().selectedTheme?.theme,
        routes: routes(context),
        initialRoute: RouteNames.splash,
      ),
    );
  }
}
