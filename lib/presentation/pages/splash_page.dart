import 'package:flutter/material.dart';
import 'package:itemco_test_case/presentation/view/splash.view.dart';
import 'package:itemco_test_case_part/config/config.dart';

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
