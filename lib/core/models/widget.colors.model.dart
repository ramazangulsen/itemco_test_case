import 'dart:ui';

class WidgetColorsModel {
  ///Default
  Color primaryColor;
  Color defaultRed;
  Color defaultGreen;
  Color defaultPurple;
  Color defaultOrange;
  Color defaultBlue;
  Color defaultWhite;

  ///Background
  Color systemBackgroundPrimary;
  Color systemBackgroundSecondary;
  Color systemBackgroundTertiary;
  Color systemBackground;
  Color systemOnBackground;
  //Surface
  Color systemSurface1;
  Color systemSurface2;
  Color systemSurface3;

  ///Gray
  Color defaultGray;
  Color defaultGray2;
  Color defaultGray3;
  Color defaultGray4;
  Color defaultGray5;
  Color defaultGray6;

  ///Label
  Color labelColorPrimary;
  Color labelColorSecondary;
  Color labelColorTertiary;
  Color labelColorQuaternary;

  ///Fill Color
  Color fillColorPrimary;
  Color fillColorSecondary;
  Color fillColorTertiary;
  Color fillColorQuaternary;

  ///Link
  Color linkBlue;

  //Chart colors
  Color graphicColorOrange;
  Color graphicColorYellow;
  Color graphicColorGreen;
  Color graphicColorMint;
  Color graphicColorCyan;
  Color graphicColorBlue;
  Color graphicColorIndigo;
  Color graphicColorPurple;
  Color graphicColorPink;
  Color graphicColorBrown;

  //Container Colors
  Color bioIconContainerColor;
  Color bioIconContainerSecondaryColor;

  //Cocpit Colors
  Color onBoardingAppBarBgColor;

  ///Instrument Watch Row colors
  Color watchRowBlinkBackground;
  Color watchRowBlinkForeground;
  Color watchRowBlinkPositiveBackground;
  Color watchRowBlinkPositiveForeground;
  Color watchRowBlinkNegativeBackground;
  Color watchRowBlinkNegativeForeground;

  Color overlayColor;
  Color callBottomSheetBackgroundColor;
  Color dividerColor;

  //Notifier Colors
  Color notifierFailBackground;
  Color notifierDoneBackground;
  Color notifierWarningBackground;
  Color notifierInfoBackground;

  //Date Picker Colors
  Color labelDatePickerPrimary;

  //Symbol Detail Ask-Bid Button Colors
  Color askBidButtonColor;

  WidgetColorsModel({
    required this.defaultWhite,
    required this.primaryColor,
    required this.defaultRed,
    required this.defaultGreen,
    required this.defaultPurple,
    required this.defaultOrange,
    required this.defaultBlue,
    required this.systemBackgroundPrimary,
    required this.systemBackgroundSecondary,
    required this.systemBackgroundTertiary,
    required this.systemBackground,
    required this.systemOnBackground,
    required this.systemSurface1,
    required this.systemSurface2,
    required this.systemSurface3,
    required this.defaultGray,
    required this.defaultGray2,
    required this.defaultGray3,
    required this.defaultGray4,
    required this.defaultGray5,
    required this.defaultGray6,
    required this.labelColorPrimary,
    required this.labelColorSecondary,
    required this.labelColorTertiary,
    required this.labelColorQuaternary,
    required this.fillColorPrimary,
    required this.fillColorSecondary,
    required this.fillColorTertiary,
    required this.fillColorQuaternary,
    required this.linkBlue,
    required this.watchRowBlinkBackground,
    required this.watchRowBlinkForeground,
    required this.watchRowBlinkPositiveBackground,
    required this.watchRowBlinkPositiveForeground,
    required this.watchRowBlinkNegativeBackground,
    required this.watchRowBlinkNegativeForeground,

    //Chart colors
    required this.graphicColorOrange,
    required this.graphicColorYellow,
    required this.graphicColorGreen,
    required this.graphicColorMint,
    required this.graphicColorCyan,
    required this.graphicColorBlue,
    required this.graphicColorIndigo,
    required this.graphicColorPurple,
    required this.graphicColorPink,
    required this.graphicColorBrown,

    //Cocpit colors
    required this.onBoardingAppBarBgColor,

    //Container Colors
    required this.bioIconContainerColor,
    required this.bioIconContainerSecondaryColor,
    required this.overlayColor,
    required this.callBottomSheetBackgroundColor,
    required this.dividerColor,

    //Notifier Colors
    required this.notifierFailBackground,
    required this.notifierDoneBackground,
    required this.notifierWarningBackground,
    required this.notifierInfoBackground,

    //Date Picker Colors
    required this.labelDatePickerPrimary,

    //Symbol Detail Ask-Bid Button Colors
    required this.askBidButtonColor,
  });

  factory WidgetColorsModel.fromJson(Map<String, dynamic> map) =>
      WidgetColorsModel(
        defaultWhite: Color(map['defaultWhite'] ?? 0000000000),
        primaryColor: Color(map['primaryColor'] ?? 0000000000),
        defaultRed: Color(map['defaultRed'] ?? 0000000000),
        defaultGreen: Color(map['defaultGreen'] ?? 0000000000),
        defaultPurple: Color(map['defaultPurple'] ?? 0000000000),
        defaultOrange: Color(map['defaultOrange'] ?? 0000000000),
        defaultBlue: Color(map['defaultBlue'] ?? 0000000000),
        systemBackgroundPrimary:
            Color(map['systemBackgroundPrimary'] ?? 0000000000),
        systemBackgroundSecondary:
            Color(map['systemBackgroundSecondary'] ?? 0000000000),
        systemBackgroundTertiary:
            Color(map['systemBackgroundTertiary'] ?? 0000000000),
        systemBackground: Color(map['systemBackground'] ?? 0000000000),
        systemOnBackground: Color(map['systemOnBackground'] ?? 0000000000),
        systemSurface1: Color(map['systemSurface1'] ?? 0000000000),
        systemSurface2: Color(map['systemSurface2'] ?? 0000000000),
        systemSurface3: Color(map['systemSurface3'] ?? 0000000000),
        defaultGray: Color(map['defaultGray'] ?? 0000000000),
        defaultGray2: Color(map['defaultGray2'] ?? 0000000000),
        defaultGray3: Color(map['defaultGray3'] ?? 0000000000),
        defaultGray4: Color(map['defaultGray4'] ?? 0000000000),
        defaultGray5: Color(map['defaultGray5'] ?? 0000000000),
        defaultGray6: Color(map['defaultGray6'] ?? 0000000000),
        labelColorPrimary: Color(map['labelColorPrimary'] ?? 0000000000),
        labelColorSecondary: Color(map['labelColorSecondary'] ?? 0000000000),
        labelColorTertiary: Color(map['labelColorTertiary'] ?? 0000000000),
        labelColorQuaternary: Color(map['labelColorQuaternary'] ?? 0000000000),
        fillColorPrimary: Color(map['fillColorPrimary'] ?? 0000000000),
        fillColorSecondary: Color(map['fillColorSecondary'] ?? 0000000000),
        fillColorTertiary: Color(map['fillColorTertiary'] ?? 0000000000),
        fillColorQuaternary: Color(map['fillColorQuaternary'] ?? 0000000000),
        linkBlue: Color(map['linkBlue'] ?? 0000000000),
        watchRowBlinkBackground:
            Color(map['watchRowBlinkBackground'] ?? 00000000),
        watchRowBlinkForeground:
            Color(map['watchRowBlinkForeground'] ?? 00000000),
        watchRowBlinkPositiveBackground:
            Color(map['watchRowBlinkPositiveBackground'] ?? 00000000),
        watchRowBlinkPositiveForeground:
            Color(map['watchRowBlinkPositiveForeground'] ?? 00000000),
        watchRowBlinkNegativeBackground:
            Color(map['watchRowBlinkNegativeBackground'] ?? 00000000),
        watchRowBlinkNegativeForeground:
            Color(map['watchRowBlinkNegativeForeground'] ?? 00000000),

        //Chart colors
        graphicColorOrange: Color(map['graphicColorOrange'] ?? 00000000),
        graphicColorYellow: Color(map['graphicColorYellow'] ?? 00000000),
        graphicColorGreen: Color(map['graphicColorGreen'] ?? 00000000),
        graphicColorMint: Color(map['graphicColorMint'] ?? 00000000),
        graphicColorCyan: Color(map['graphicColorCyan'] ?? 00000000),
        graphicColorBlue: Color(map['graphicColorBlue'] ?? 00000000),
        graphicColorIndigo: Color(map['graphicColorIndigo'] ?? 00000000),
        graphicColorPurple: Color(map['graphicColorPurple'] ?? 00000000),
        graphicColorPink: Color(map['graphicColorIndigo'] ?? 00000000),
        graphicColorBrown: Color(map['graphicColorPurple'] ?? 00000000),

        onBoardingAppBarBgColor:
            Color(map["onBoardingAppBarBgColor"] ?? 00000000),

        //Container colors
        bioIconContainerColor: Color(map["bioIconContainerColor"] ?? 00000000),
        bioIconContainerSecondaryColor:
            Color(map["bioIconContainerSecondaryColor"] ?? 00000000),

        overlayColor: Color(map["overlayColor"] ?? 00000000),
        callBottomSheetBackgroundColor:
            Color(map["callBottomSheetBackgroundColor"] ?? 00000000),
        dividerColor: Color(map["dividerColor"] ?? 00000000),

        //Notifier Colors
        notifierFailBackground:
            Color(map["notifierFailBackground"] ?? 00000000),
        notifierDoneBackground:
            Color(map["notifierDoneBackground"] ?? 00000000),
        notifierWarningBackground:
            Color(map["notifierWarningBackground"] ?? 00000000),
        notifierInfoBackground:
            Color(map["notifierInfoBackground"] ?? 00000000),

        //Date Picker Colors
        labelDatePickerPrimary:
            Color(map["labelDatePickerPrimary"] ?? 00000000),

        //Symbol Detail Ask-Bid Button Colors
        askBidButtonColor: Color(map["askBidButtonColor"] ?? 00000000),
      );

  Map<String, Color> toColorMap() => {
        'appbarActive': primaryColor,
        'watchRowBlinkBackground': watchRowBlinkBackground,
        'watchRowBlinkForeground': watchRowBlinkForeground,
        'watchRowBlinkPositiveBackground': watchRowBlinkPositiveBackground,
        'watchRowBlinkPositiveForeground': watchRowBlinkPositiveForeground,
        'watchRowBlinkNegativeBackground': watchRowBlinkNegativeBackground,
        'watchRowBlinkNegativeForeground': watchRowBlinkNegativeForeground,

        //Chart colors
        "graphicColorOrange": graphicColorOrange,
        "graphicColorYellow": graphicColorYellow,
        "graphicColorGreen": graphicColorGreen,
        "graphicColorMint": graphicColorMint,
        "graphicColorCyan": graphicColorCyan,
        "graphicColorBlue": graphicColorBlue,
        "graphicColorIndigo": graphicColorIndigo,
        "graphicColorPurple": graphicColorPurple,
        "graphicColorPink": graphicColorPink,
        "graphicColorBrown": graphicColorBrown,

        //Cocpit colors
        "onBoardingAppBarBgColor": onBoardingAppBarBgColor,
        //Container colors
        "bioIconContainerColor": bioIconContainerColor,
        "bioIconContainerSecondaryColor": bioIconContainerSecondaryColor,

        "overlayColor": overlayColor,
        "callBottomSheetBackgroundColor": callBottomSheetBackgroundColor,
        "dividerColor": dividerColor,

        //Notifier Colors
        "notifierFailBackground": notifierFailBackground,
        "notifierDoneBackground": notifierDoneBackground,
        "notifierWarningBackground": notifierWarningBackground,
        "notifierInfoBackground": notifierInfoBackground,

        //Date Picker Colors
        "labelDatePickerPrimary": labelDatePickerPrimary,

        //Symbol Detail Ask-Bid Button Colors
        "askBidButtonColor": askBidButtonColor,
      };

  Map<String, dynamic> toMap() => {
        'defaultWhite': defaultWhite.value,
        'primaryColor': primaryColor.value,
        'defaultRed': defaultRed.value,
        'defaultGreen': defaultGreen.value,
        'defaultPurple': defaultPurple.value,
        'defaultOrange': defaultOrange.value,
        'defaultBlue': defaultBlue.value,
        'systemBackgroundPrimary': systemBackgroundPrimary.value,
        'systemBackgroundSecondary': systemBackgroundSecondary.value,
        'systemBackgroundTertiary': systemBackgroundTertiary.value,
        'systemBackground': systemBackground.value,
        'systemOnBackground': systemOnBackground.value,
        'systemSurface1': systemSurface1.value,
        'systemSurface2': systemSurface2.value,
        'systemSurface3': systemSurface3.value,
        'defaultGray': defaultGray.value,
        'defaultGray2': defaultGray2.value,
        'defaultGray3': defaultGray3.value,
        'defaultGray4': defaultGray4.value,
        'defaultGray5': defaultGray5.value,
        'defaultGray6': defaultGray6.value,
        'labelColorPrimary': labelColorPrimary.value,
        'labelColorSecondary': labelColorSecondary.value,
        'labelColorTertiary': labelColorTertiary.value,
        'labelColorQuaternary': labelColorQuaternary.value,
        'fillColorPrimary': fillColorPrimary.value,
        'fillColorSecondary': fillColorSecondary.value,
        'fillColorTertiary': fillColorTertiary.value,
        'fillColorQuaternary': fillColorQuaternary.value,
        'linkBlue': linkBlue.value,
        'pageForegroundAccent': labelColorSecondary.value,
        'pageForegroundAccent2': primaryColor.value,
        'appbarActive': primaryColor.value,
        'watchRowBlinkBackground': watchRowBlinkBackground.value,
        'watchRowBlinkForeground': watchRowBlinkForeground.value,
        'watchRowBlinkPositiveBackground':
            watchRowBlinkPositiveBackground.value,
        'watchRowBlinkPositiveForeground':
            watchRowBlinkPositiveForeground.value,
        'watchRowBlinkNegativeBackground':
            watchRowBlinkNegativeBackground.value,
        'watchRowBlinkNegativeForeground':
            watchRowBlinkNegativeForeground.value,

        //Chart colors
        "graphicColorOrange": graphicColorOrange.value,
        "graphicColorYellow": graphicColorYellow.value,
        "graphicColorGreen": graphicColorGreen.value,
        "graphicColorMint": graphicColorMint.value,
        "graphicColorCyan": graphicColorCyan.value,
        "graphicColorBlue": graphicColorBlue.value,
        "graphicColorIndigo": graphicColorIndigo.value,
        "graphicColorPurple": graphicColorPurple.value,
        "graphicColorPink": graphicColorPink.value,
        "graphicColorBrown": graphicColorBrown.value,

        //Cocpit colors
        "onBoardingAppBarBgColor": onBoardingAppBarBgColor,

        //Container colors
        "bioIconContainerColor": bioIconContainerColor,
        "bioIconContainerSecondaryColor": bioIconContainerSecondaryColor,

        "overlayColor": overlayColor,
        "callBottomSheetBackgroundColor": callBottomSheetBackgroundColor,
        "dividerColor": dividerColor,

        //Notifier Colors
        "notifierFailBackground": notifierFailBackground,
        "notifierDoneBackground": notifierDoneBackground,
        "notifierWarningBackground": notifierWarningBackground,
        "notifierInfoBackground": notifierInfoBackground,

        "labelDatePickerPrimary": labelDatePickerPrimary,

        //Symbol Detail Ask-Bid Button Colors
        "askBidButtonColor": askBidButtonColor,
      };
}
