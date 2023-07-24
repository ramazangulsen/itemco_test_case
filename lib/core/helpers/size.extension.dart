import 'dart:ui';

import 'package:flutter/material.dart';

extension SizeExtension on BuildContext {
  static final PlatformDispatcher _dispatcher = PlatformDispatcher.instance;

  Size get screenSize => _dispatcher.views.first.physicalSize;

  double get devicePixelRatio => _dispatcher.views.first.devicePixelRatio;

  Size get logicalScreenSize => screenSize / devicePixelRatio;

  double get screenWidth => logicalScreenSize.width;

  double get screenHeight => logicalScreenSize.height;

  double get statusBarHeight => _dispatcher.views.first.viewPadding.top;

  double withSubtracted(double val) => screenWidth - val;

  double heightSubtracted(double val) => screenWidth - val;

  double fractionalWidth(double val) => screenWidth * val;

  double fractionalHeight(double val) => screenHeight * val;
}
