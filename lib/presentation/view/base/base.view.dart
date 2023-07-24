import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itemco_test_case/core/services/theme.service.dart';

class ScreenBaseWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final Widget body;
  final Widget? title;
  final String? searchAreaTitle;
  final VoidCallback? searchAreaFunction;
  final List<Widget>? actionButtons;
  final List<Widget>? leadingButtons;
  final bool? floatingButtonExists;
  final VoidCallback? floatingButtonAction;
  final Color? floatingActionButtonBackground;
  final Widget? floatingActionButtonContent;
  final EdgeInsetsGeometry? floatingActionButtonMargin;
  final Widget? appbarExtraContent;
  final bool appbarExists;
  final VoidCallback? backButtonFunction;
  final Widget? bottomBar;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final bool? displayTitleMultiline;
  final PreferredSizeWidget? appBarWidget;
  final bool? resizeToAvoidBottomInset;
  final Color? scaffoldBackgroundColor;
  final Color? safeAreaColor;
  final Widget? drawer;
  final Brightness? statusBarBrightness;

  const ScreenBaseWidget({
    Key? key,
    required this.body,
    this.scaffoldKey,
    this.title,
    this.displayTitleMultiline = false,
    this.actionButtons,
    this.searchAreaTitle,
    this.appbarExtraContent,
    this.appbarExists = true,
    this.backButtonFunction,
    this.leadingButtons,
    this.bottomBar,
    this.searchAreaFunction,
    this.floatingButtonAction,
    this.floatingActionButtonBackground,
    this.floatingActionButtonContent,
    this.floatingButtonExists,
    this.floatingActionButtonMargin,
    this.floatingActionButtonLocation =
        FloatingActionButtonLocation.centerDocked,
    this.appBarWidget,
    this.resizeToAvoidBottomInset,
    this.scaffoldBackgroundColor,
    this.drawer,
    this.safeAreaColor,
    this.statusBarBrightness,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFirst = ModalRoute.of(context)?.isFirst ?? false;
    bool showFloatButton = floatingButtonExists ?? false;

    Color floatButtonBackground = floatingButtonAction != null
        ? (floatingActionButtonBackground ?? context.widgetColors.defaultGreen)
        : context.widgetColors.systemSurface2;
    Widget floatButtonContent = floatingActionButtonContent ??
        Image.asset(
          "assets/images/buy_sell.png",
          color: context.widgetColors.systemSurface1,
          width: 36,
          height: 36,
        );

    return ColoredBox(
      color: safeAreaColor ??
          scaffoldBackgroundColor ??
          context.widgetColors.systemSurface2,
      child: SafeArea(
        top: false,
        bottom: false,
        child: ColoredBox(
          color: context.widgetColors.systemSurface2,
          child: WillPopScope(
            onWillPop: isFirst ? () => Future.value(false) : null,
            child: Theme(
              data: context.theme,
              child: AnnotatedRegion<SystemUiOverlayStyle>(
                value: ThemeService().fillOverlayState(statusBarBrightness),
                child: Scaffold(
                  drawer: drawer,
                  resizeToAvoidBottomInset: resizeToAvoidBottomInset,
                  key: scaffoldKey,
                  bottomNavigationBar: bottomBar,
                  appBar: appBarWidget,
                  body: GestureDetector(
                    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                    child: Stack(
                      children: [
                        SizedBox.expand(
                          child: ColoredBox(
                            color: scaffoldBackgroundColor ??
                                context.theme.scaffoldBackgroundColor,
                            child: body,
                          ),
                        ),
                        // if (MediaQuery.viewInsetsOf(context).bottom > 0)
                        //   Positioned(
                        //     bottom: 0,
                        //     child:
                        //         KeyboardDoneButtonService.getKeyboardOverArea(),
                        //   ),
                      ],
                    ),
                  ),
                  floatingActionButton: showFloatButton
                      ? Padding(
                          padding:
                              floatingActionButtonMargin ?? EdgeInsets.zero,
                          child: FloatingActionButton.extended(
                            label: floatButtonContent,
                            heroTag: Key(scaffoldKey.toString()),
                            disabledElevation: 0,
                            backgroundColor: floatButtonBackground,
                            onPressed: floatingButtonAction,
                          ),
                        )
                      : null,
                  floatingActionButtonLocation: floatingActionButtonLocation,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
