import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  final GlobalKey<NavigatorState>? navigatorKey;
  bool isInited = false;

  SettingsProvider({
    this.navigatorKey,
  });
}
