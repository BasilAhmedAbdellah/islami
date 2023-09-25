import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocale = 'en';

  void changeTheme(ThemeMode NewTheme) {
    if (NewTheme == currentTheme) return;
    currentTheme = NewTheme;
    notifyListeners();
  }

  String getbackgroundImage() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/dark_bg.jpg'
        : 'assets/images/background_all.png';
  }

  bool isDarkEnabled() {
    return currentTheme == ThemeMode.dark;
  }

  void ChangeLocale(String NewLocale) {
    if (NewLocale == currentLocale) return;
    currentLocale = NewLocale;
    notifyListeners();
  }
}
