import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/helpers/size.extension.dart';
import 'package:ny_times_articles/core/models/app_icons.model.dart';
import 'package:ny_times_articles/core/viewmodels/base/viewmodel.provider.dart';
import 'package:ny_times_articles/core/viewmodels/splash.viewmodel.dart';
import 'package:ny_times_articles/presentation/view/base/base.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider(
        model: SplashViewModel(context: context),
        builder: (model) {
          return ScreenBaseWidget(
            body: Center(
              child: Image(
                image: AppIcons.nyTimeLogo,
                width: context.fractionalWidth(0.5),
              ),
            ),
          );
        });
  }
}
