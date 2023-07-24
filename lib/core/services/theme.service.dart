import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ny_times_articles/core/models/theme.model.dart';
import 'package:ny_times_articles/core/models/widget.colors.model.dart';
import 'package:ny_times_articles/core/services/value.stream.service.dart';
import 'package:ny_times_articles_part/theme/light.theme.dart';

extension ThemeExtension on BuildContext {
  ThemeModel get selectedTheme =>
      ThemeService().selectedTheme ?? ThemeModel.fromJson({});

  ThemeData get theme => selectedTheme.theme;

  TextTheme get textTheme => theme.textTheme;

  WidgetColorsModel get widgetColors => selectedTheme.widgetColors;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  String get selectedThemeName => selectedTheme.name;
}

class ThemeService {
  static final ThemeService _singleton = ThemeService._internal();

  factory ThemeService() => _singleton;

  ThemeService._internal();

  bool themeChangeModeIsLocked = false;

  ///Theme List
  List<ThemeModel> themes = List.empty(growable: true);
  String userSelectedTheme = '';

  ///Selected Theme
  ThemeModel? _selectedTheme;

  ValueNotifier<ThemeModel?> selectedThemeValueNotifier = ValueNotifier(null);

  ThemeModel? get selectedTheme {
    return _selectedTheme;
  }

  //Theme service initialization
  Future init() async {
    fetchThemes();
    userSelectedTheme = await getUserSelectedTheme();
    _selectedTheme = selectTheme(userSelectedTheme);

    // WidgetsBinding.instance.window.onPlatformBrightnessChanged =
    //     deviceThemeChanged;
    return Future.value();
  }

  ///THEME WORKS
  Future<void> switchTheme(
    String selector, {
    bool selectedByUser = false,
  }) async {
    //For protect memory we save the latest selected theme value to local

    //await LocalDataRepository().setLocalData("last_selected_theme", selector);

    //Seçim provider üzerindeki değişkene uyarlanır
    _selectedTheme = selectTheme(selector);

    ValueStreamService().controller.add(
          ValueStreamModel(
            type: ValueStreamType.themeChange,
            data: _selectedTheme,
          ),
        );
  }

  /// Kullanıcının son seçtiği tema bilgisinin okunduğu yer
  Future<String> getUserSelectedTheme() async {
    String preDefineTheme = _checkPhoneInDarkMode() ? "dark" : "light";
    if (userSelectedTheme.isNotEmpty) {
      preDefineTheme = userSelectedTheme;
    }
    return Future.value(preDefineTheme);
  }

  ///Seçilen isim ile tema varsa var olan temayı döndürür.
  ///Bu isimde tema yoksa listedeki ilk temayı döndürdür, liste boş ise null döndürür.
  ThemeModel? selectTheme(String selector) {
    if (themes.isEmpty) return null;
    userSelectedTheme = selector;

    final selectedTheme = themes.firstWhere(
      (x) => x.selector == selector,
      orElse: () => themes.first,
    );

    //Header set edilir
    SystemChrome.setSystemUIOverlayStyle(
      selectedTheme.theme.appBarTheme.systemOverlayStyle!,
    );

    selectedThemeValueNotifier.value = selectedTheme;

    return selectedTheme;
  }

  /// Sunucudan ilgili tema verilerini getirir.
  Future<void> fetchThemes() async {
    setThemes([
      lightTheme,
      // darkTheme,
      // redTheme,
      // DARK_THEME_JSON,
      // CONTRAST_THEME_JSON,
    ]);

    return Future.value();
  }

  /// Sunucudan alınan [List<Map>] formatındaki tema verilerini uygulamaya set etmeye yarayar.
  void setThemes(List<Map<String, dynamic>> list) {
    for (var item in list) {
      _setTheme(item);
    }
  }

  /// [Map<String, dynamic>] olarak gelen datayı [ThemeModel]'e çevirerek [themes] listesine ekler.
  void _setTheme(Map<String, dynamic> map) => themes.add(
        ThemeModel.fromJson(map),
      );

  /// Cihazın o anda koyu veya açık modda olup olmadığını kontrol eder.
  bool _checkPhoneInDarkMode() {
    var brightness = PlatformDispatcher.instance.platformBrightness;
    return brightness == Brightness.dark;
  }

  /// Update selected theme if device theme has changed outside of app
  void deviceThemeChanged() {
    if (themeChangeModeIsLocked) return;

    final brightness = PlatformDispatcher.instance.platformBrightness;
    switchTheme(brightness.toString().split('.')[1]);
  }

  SystemUiOverlayStyle fillOverlayState(Brightness? brightness) {
    if (brightness == null) {
      if (userSelectedTheme == "light") {
        return SystemUiOverlayStyle.dark.copyWith(
          systemNavigationBarColor:
              selectedTheme?.widgetColors.systemBackgroundPrimary,
          systemNavigationBarIconBrightness: Brightness.dark,
        );
      } else {
        return SystemUiOverlayStyle.light.copyWith(
          systemNavigationBarColor:
              selectedTheme?.widgetColors.systemBackgroundPrimary,
          systemNavigationBarIconBrightness: Brightness.light,
        );
      }
    }
    return brightness == Brightness.light
        ? SystemUiOverlayStyle.light.copyWith(
            systemNavigationBarColor:
                selectedTheme?.widgetColors.systemBackgroundPrimary,
            systemNavigationBarIconBrightness: Brightness.dark,
          )
        : SystemUiOverlayStyle.dark.copyWith(
            systemNavigationBarColor:
                selectedTheme?.widgetColors.systemBackgroundPrimary,
            systemNavigationBarIconBrightness: Brightness.light);
  }
}
