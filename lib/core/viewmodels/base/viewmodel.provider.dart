import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/viewmodels/base/base.viewmodel.dart';
import 'package:provider/provider.dart';

enum ProvideMode {
  consume,
  select,
}

class ViewModelProvider<T extends BaseViewModel> extends StatelessWidget {
  final BaseViewModel model;
  final Widget Function(T model) builder;
  final ProvideMode provideMode;

  const ViewModelProvider({
    super.key,
    required this.model,
    required this.builder,
    this.provideMode = ProvideMode.select,
  });

  @override
  Widget build(BuildContext context) {
    bool isConsume = (this.provideMode == ProvideMode.consume);

    return ChangeNotifierProvider<T>(
      lazy: true,
      create: (BuildContext context2) => model as T,
      child: isConsume
          ? Consumer<T>(
              builder: (
                BuildContext context,
                T value,
                Widget? child,
              ) =>
                  builder(value),
            )
          : builder(model as T),
    );
  }
}
