import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Default
const primaryColor = Color(0xff20C1CC);
const defaultRed = Color(0xffFF3B30);
const defaultGreen = Color(0xff30D158);
const defaultPurple = Color(0xff5E5CE6);
const defaultOrange = Color(0xffFF9F0A);
const defaultBlue = Color(0xff0A84FF);
const defaultWhite = Color(0xffFFFFFF);

//Background
const systemBackgroundPrimary = Color(0xff000000);
const systemBackground = Color(0xff000000);
const systemOnBackGround = Color(0xff1C1C1E);

//Surface
const systemSurface1 = Color(0xff000000);
const systemSurface2 = Color(0xff1C1C1E);
const systemSurface3 = Color(0xff2C2C2E);

//Gray
const defaultGray = Color(0xff8E8E93);
const defaultGray2 = Color(0xff636366);
const defaultGray3 = Color(0xff48484A);
const defaultGray4 = Color(0xff3A3A3C);
const defaultGray5 = Color(0xff2C2C2E);
const defaultGray6 = Color(0xff1C1C1E);

//Label
const labelColorPrimary = Color(0xffFFFFFF);
const labelColorSecondary = Color(0x99EBEBF5);
const labelColorTertiary = Color(0x4DEBEBF5);
const labelColorQuaternary = Color(0x14EBEBF5);

//Fill Color
const fillColorPrimary = Color(0x5C787880);
const fillColorSecondary = Color(0x52787880);
const fillColorTertiary = Color(0x3D767680);
const fillColorQuaternary = Color(0x2E747480);

//Link
const linkBlue = Color(0xff0A84FF);

//Graphic Colors
const graphicColorOrange = Color(0xffF09B2D);
const graphicColorYellow = Color(0xffF7D337);
const graphicColorGreen = Color(0xff5CC658);
const graphicColorMint = Color(0xff7BDEDD);
const graphicColorCyan = Color(0xff74C8FB);
const graphicColorBlue = Color(0xff3177F8);
const graphicColorIndigo = Color(0xff5253DC);
const graphicColorPurple = Color(0xffA959EA);
const graphicColorPink = Color(0xffE94857);
const graphicColorBrown = Color(0xff9E8460);

//Container Colors
const bioIconContainerColor = Color(0xFF1C1C1E);
const bioIconContainerSecondaryColor = Color(0xFF2C2C2E);

const overlayColor = Color(0x99000000);
const callBottomSheetBackgroundColor = Color(0xFF1C1C1E);
const dividerColor = Color(0xFF39393D);

const askBidButtonColor = Color(0x2620C1CC);

final Map<String, dynamic> darkTheme = {
  "corporate": "Itemco",
  "name": "theme_title_dark",
  "selector": "dark",
  "widgetColors": {
    'primaryColor': 0xff20C1CC,
    'defaultRed': 0xffFF3B30,
    'defaultGreen': 0xff30D158,
    'defaultPurple': 0xff5E5CE6,
    'defaultOrange': 0xffFF9F0A,
    'defaultBlue': 0xff0A84FF,
    'defaultWhite': 0xffFFFFFF,

    'systemBackgroundPrimary': 0xff000000,
    'systemBackground': 0xff000000,
    'systemOnBackground': 0xff1C1C1E,

    'systemSurface1': 0xff000000,
    'systemSurface2': 0xff1C1C1E,
    'systemSurface3': 0xff2C2C2E,

    'defaultGray': 0xff8E8E93,
    'defaultGray2': 0xff636366,
    'defaultGray3': 0xff48484A,
    'defaultGray4': 0xff3A3A3C,
    'defaultGray5': 0xff2C2C2E,
    'defaultGray6': 0xff1C1C1E,

    'labelColorPrimary': 0xffFFFFFF,
    'labelColorSecondary': 0x99EBEBF5,
    'labelColorTertiary': 0x4DEBEBF5,
    'labelColorQuaternary': 0x14EBEBF5,

    'fillColorPrimary': 0x5C787880,
    'fillColorSecondary': 0x52787880,
    'fillColorTertiary': 0x3D767680,
    'fillColorQuaternary': 0x2E747480,

    'linkBlue': 0xff0A84FF,

    "bioIconContainerColor": 0xFF1C1C1E,
    "bioIconContainerSecondaryColor": 0xFF2C2C2E,

    "graphicColorOrange": 0xffF09B2D,
    "graphicColorYellow": 0xffF7D337,
    "graphicColorGreen": 0xff5CC658,
    "graphicColorMint": 0xff7BDEDD,
    "graphicColorCyan": 0xff74C8FB,
    "graphicColorBlue": 0xff3177F8,
    "graphicColorIndigo": 0xff5253DC,
    "graphicColorPurple": 0xffA959EA,
    "graphicColorPink": 0xffE94857,
    "graphicColorBrown": 0xff9E8460,

    'onBoardingAppBarBgColor': 0xff000000,

    //Watch Row Colors:
    'watchRowBlinkBackground': 0xff4885ed,
    'watchRowBlinkForeground': 0xff2b3954,
    'watchRowBlinkPositiveBackground': 0xff19c75e,
    'watchRowBlinkPositiveForeground': 0xff194f00,
    'watchRowBlinkNegativeBackground': 0xff30D158,
    'watchRowBlinkNegativeForeground': 0xff4f0009,

    "overlayColor": 0x99000000,
    "callBottomSheetBackgroundColor": 0xFF1C1C1E,
    "dividerColor": 0xFF39393D,
    "askBidButtonColor": 0x2620C1CC,
  },
  "theme": ThemeData(
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: systemBackgroundPrimary,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light, // For Android (light icons)
        statusBarBrightness: Brightness.dark, // For iOS (light icons)
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: systemBackgroundPrimary,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
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
          color: systemBackgroundPrimary,
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
