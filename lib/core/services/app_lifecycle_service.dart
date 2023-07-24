import 'dart:async';

import 'package:flutter/material.dart';

class AppLifecycleService {
  static final AppLifecycleService _singleton = AppLifecycleService._internal();

  factory AppLifecycleService() => _singleton;

  AppLifecycleState lastState = AppLifecycleState.resumed;

  //Initialization area
  AppLifecycleService._internal();

  // ignore: close_sinks
  StreamController<AppLifecycleState> controller =
      StreamController<AppLifecycleState>.broadcast();

  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == lastState) return;
    controller.add(state);
    lastState = state;
    // Future.delayed(Duration.zero, () {});
  }
}
