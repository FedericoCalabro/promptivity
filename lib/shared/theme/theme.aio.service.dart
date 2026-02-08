import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:promptivity/core/di.dart';

class ThemeService extends ChangeNotifier {
  var themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;
  bool get isLightMode => themeMode == ThemeMode.light;

  void toggleTheme() {
    setThemeMode(isDarkMode ? .light : .dark);
  }

  void setThemeMode(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }
}

ThemeMode useThemeMode() {
  final themeService = getIt<ThemeService>();
  useListenable(themeService);
  return themeService.themeMode;
}
