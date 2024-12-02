import 'package:flutter/material.dart';
import 'package:flutter_music_app/resources/colors.dart';

class ThemeProvider extends ChangeNotifier {
  // The current theme state (light or dark)
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  // Get colors based on the current theme
  AppColor get colors {
    return _isDarkMode ? AppColor.dark() : AppColor.light();
  }

  // Toggle the theme between light and dark
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();  // Notify listeners when the theme changes
  }
}
