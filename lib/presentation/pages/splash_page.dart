import 'package:flutter/material.dart';
import 'package:ny_times_articles/presentation/view/splash.view.dart';
import 'package:ny_times_articles_part/config/config.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return splashView ??
        SplashView(
          key: key,
        );
  }
}
