import 'package:flutter/material.dart';
import 'package:itemco_test_case/core/base_providers/settings.provider.dart';
import 'package:itemco_test_case/core/services/app_lifecycle_service.dart';
import 'package:itemco_test_case/core/services/value.stream.service.dart';
import 'package:itemco_test_case/presentation/view/base/provider.creators.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ItemcoMain extends StatefulWidget {
  const ItemcoMain({
    Key? key,
    this.navigatorKey,
    this.outerProviders,
    this.child,
  }) : super(key: key);

  final Widget? child;
  final List<SingleChildWidget>? outerProviders;
  final GlobalKey<NavigatorState>? navigatorKey;

  @override
  ItemcoMainState createState() => ItemcoMainState();
}

class ItemcoMainState extends State<ItemcoMain> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    AppLifecycleService().didChangeAppLifecycleState(state);
    ValueStreamService().controller.add(ValueStreamModel(
          type: ValueStreamType.lifecycle,
          data: state,
        ));
  }

  Widget loadingWidget(Widget? content) =>
      content ??
      const Material(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );

  @override
  Widget build(BuildContext context) => ProviderCreator.getProviders(
        outerProviders: widget.outerProviders ?? [],
        navigatorKey: widget.navigatorKey,
        child: Selector<SettingsProvider, bool>(
          selector: (_, a) => a.isInited,
          builder: (context, isInited, child) {
            return widget.child ?? const SizedBox();
          },
        ),
      );
}
