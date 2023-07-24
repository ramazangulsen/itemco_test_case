import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Default
const primaryColor = Color(0xff20C1CC);
const defaultRed = Color(0xffFF3B30);
const defaultGreen = Color(0xFF34C759);
const defaultPurple = Color(0xff5856D6);
const defaultOrange = Color(0xffFF9500);
const defaultBlue = Color(0xff007AFF);
const defaultWhite = Color(0xffFFFFFF);

//Background
const systemBackgroundPrimary = Color(0xffFFFFFF);
const systemBackground = Color(0xffF2F2F7);
const systemOnBackground = Color(0xFFFFFFFF);

//Surface
const systemSurface1 = Color(0xffFFFFFF);
const systemSurface2 = Color(0xffF2F2F7);
const systemSurface3 = Color(0xffFFFFFF);

//Gray
const defaultGray = Color(0xff8E8E93);
const defaultGray2 = Color(0xffAEAEB2);
const defaultGray3 = Color(0xffC7C7CC);
const defaultGray4 = Color(0xffD1D1D6);
const defaultGray5 = Color(0xffE5E5EA);
const defaultGray6 = Color(0xffF2F2F7);

//Label
const labelColorPrimary = Color(0xff000000);
const labelColorSecondary = Color(0x993c3c43);
const labelColorTertiary = Color(0x4D3c3c43);
const labelColorQuaternary = Color(0x2E3c3c43);

//Fill Color
const fillColorPrimary = Color(0x33787880);
const fillColorSecondary = Color(0x29787880);
const fillColorTertiary = Color(0x1F767680);
const fillColorQuaternary = Color(0x14747480);
//Link
const linkBlue = Color(0xff8E8E93);

//Graphic Colors
const graphicColorOrange = Color(0xffF7CE8F);
const graphicColorYellow = Color(0xffFBEC94);
const graphicColorGreen = Color(0xffADE0B3);
const graphicColorMint = Color(0xff9DE0DF);
const graphicColorCyan = Color(0xffA9D6F1);
const graphicColorBlue = Color(0xff98C2FB);
const graphicColorIndigo = Color(0xffB0B0E8);
const graphicColorPurple = Color(0xffD9B4F5);
const graphicColorPink = Color(0xffF2A7B4);
const graphicColorBrown = Color(0xffD5C9B8);

//Container Colors
const bioIconContainerColor = Color(0xFFC0EEF1);
const bioIconContainerSecondaryColor = Color(0xffE9F9FA);

const overlayColor = Color(0x99000000);
const callBottomSheetBackgroundColor = Color(0xffFFFFFF);
const dividerColor = Color(0xFFE5E5EA);

const askBidButtonColor = Color(0x2620C1CC);

final Map<String, dynamic> lightTheme = {
  "corporate": "Itemco",
  "name": "theme_title_light",
  "selector": "light",
  "widgetColors": {
    'primaryColor': 0xff20C1CC,
    'defaultRed': 0xffFF3B30,
    'defaultGreen': 0xFF34C759,
    'defaultPurple': 0xff5856D6,
    'defaultOrange': 0xffFF9500,
    'defaultBlue': 0xff007AFF,
    'defaultWhite': 0xffFFFFFF,

    'systemBackgroundPrimary': 0xffFFFFFF,
    'systemBackground': 0xFFF2F2F7,
    'systemOnBackground': 0xFFFFFFFF,

    'systemSurface1': 0xffFFFFFF,
    'systemSurface2': 0xffF2F2F7,
    'systemSurface3': 0xffFFFFFF,

    'defaultGray': 0xff8E8E93,
    'defaultGray2': 0xffAEAEB2,
    'defaultGray3': 0xffC7C7CC,
    'defaultGray4': 0xffD1D1D6,
    'defaultGray5': 0xffE5E5EA,
    'defaultGray6': 0xffF2F2F7,

    'labelColorPrimary': 0xff000000,
    'labelColorSecondary': 0x993c3c43,
    'labelColorTertiary': 0x4D3c3c43,
    'labelColorQuaternary': 0x2E3c3c43,

    'fillColorPrimary': 0x33787880,
    'fillColorSecondary': 0x29787880,
    'fillColorTertiary': 0x1F767680,
    'fillColorQuaternary': 0x14747480,

    'linkBlue': 0xDD8E8E93,

    "bioIconContainerColor": 0xFFC0EEF1,
    "bioIconContainerSecondaryColor": 0xffE9F9FA,

    "graphicColorOrange": 0xffF7CE8F,
    "graphicColorYellow": 0xffFBEC94,
    "graphicColorGreen": 0xffADE0B3,
    "graphicColorMint": 0xff9DE0DF,
    "graphicColorCyan": 0xffA9D6F1,
    "graphicColorBlue": 0xff98C2FB,
    "graphicColorIndigo": 0xffB0B0E8,
    "graphicColorPurple": 0xffD9B4F5,
    "graphicColorPink": 0xffF2A7B4,
    "graphicColorBrown": 0xffD5C9B8,

    'onBoardingAppBarBgColor': 0xff20C1CC,

    //Watch Row Colors:
    'watchRowBlinkBackground': 0xfffdf2df,
    'watchRowBlinkForeground': 0xffac8443,
    'watchRowBlinkPositiveBackground': 0xffbae4a6,
    'watchRowBlinkPositiveForeground': 0xff194f00,
    'watchRowBlinkNegativeBackground': 0xfff6a8b1,
    'watchRowBlinkNegativeForeground': 0xff67020e,

    "overlayColor": 0x99000000,
    "callBottomSheetBackgroundColor": 0xffFFFFFF,
    "dividerColor": 0xFFE5E5EA,
    "askBidButtonColor": 0x2620C1CC,
  },
  "theme": ThemeData(
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: systemBackgroundPrimary,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: systemBackgroundPrimary,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: systemSurface3,
      secondary: primaryColor,
      onSecondary: primaryColor,
      error: defaultRed,
      onError: defaultRed,
      background: systemBackgroundPrimary,
      onBackground: systemBackgroundPrimary,
      surface: systemBackgroundPrimary,
      onSurface: systemBackgroundPrimary,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Colors.black87,
      actionTextColor: defaultOrange,
      contentTextStyle: TextStyle(
        color: Colors.white,
      ),
      disabledActionTextColor: Colors.white54,
    ),
    primaryIconTheme: const IconThemeData(
      color: labelColorPrimary,
    ),
    secondaryHeaderColor: primaryColor,
    canvasColor: systemSurface2,
    cardColor: systemSurface2,
    disabledColor: fillColorQuaternary,
    fontFamily: "Lato",
    scaffoldBackgroundColor: systemBackground,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 10,
        height: 1.17,
        letterSpacing: 0.07,
      ),
      bodyMedium: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.27,
        letterSpacing: -0.41,
      ),
      bodySmall: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 15,
        height: 1.22,
        letterSpacing: -0.24,
      ),
      displayLarge: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 34,
        height: 1,
        letterSpacing: 0.37,
      ),
      displayMedium: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 28,
        height: 1.01,
        letterSpacing: 0.36,
      ),
      displaySmall: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 22,
        height: 0.98,
        letterSpacing: 0.35,
      ),
      headlineMedium: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 20,
        height: 1,
        letterSpacing: 0.38,
      ),
      headlineSmall: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 17,
        height: 1.18,
        letterSpacing: -0.41,
      ),
      titleLarge: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.15,
        letterSpacing: -0.32,
      ),
      labelSmall: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 13,
        height: 1.22,
        letterSpacing: -0.08,
      ),
      titleMedium: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.18,
      ),
      titleSmall: TextStyle(
        color: labelColorPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 11,
        height: 1.06,
        letterSpacing: 0.07,
      ),
    ),
    highlightColor: primaryColor,
    splashColor: primaryColor,
    dialogTheme: const DialogTheme(
      backgroundColor: systemSurface2,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: labelColorPrimary,
      ),
      isDense: true,
      alignLabelWithHint: true,
      fillColor: fillColorQuaternary,
      filled: true,
      errorStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: defaultRed,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: defaultRed,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: defaultGray6,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: primaryColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: fillColorQuaternary,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: defaultRed,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          primaryColor,
        ),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.focused)) {
            return const Color(0xff00679d);
          }
          return Colors.transparent;
        }),
      ),
    ),
  ),
};
