import 'dart:async';

import 'package:flutter/material.dart';
import 'package:itemco_test_case/core/base_providers/article_provider.dart';
import 'package:itemco_test_case/core/base_providers/settings.provider.dart';
import 'package:provider/provider.dart';

abstract class BaseViewModel extends ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final BuildContext context;
  bool isDisposing = false;

  //Providers will define here

  late final SettingsProvider settingsProvider;
  late final ArticleProvider articleProvider;

  ThemeData get theme => Theme.of(context);

  TextTheme get textTheme => theme.textTheme;

  BaseViewModel({required this.context}) {
    //Providers sets will be here
    settingsProvider = context.read<SettingsProvider>();
    articleProvider = context.read<ArticleProvider>();

    initViewmodel();
  }

  void tradeStatusChangedListener() => triggerNotify;

  // void showSnackBar(SnackBar content) {
  //   if (!isDisposing) {
  //     ScaffoldMessenger.maybeOf(
  //             settingsProvider.navigatorKey?.currentContext ?? context)
  //         ?.hideCurrentSnackBar();
  //   }
  //   ScaffoldMessenger.maybeOf(
  //           settingsProvider.navigatorKey?.currentContext ?? context)
  //       ?.showSnackBar(content);
  // }

  Future initViewmodel() async {
    isDisposing = false;

    return Future.value();
  }

  void triggerNotify({bool force = false}) {
    if (!force && isDisposing) return;
    notifyListeners();
  }

  @override
  void dispose() {
    isDisposing = true;
    super.dispose();
  }
}
