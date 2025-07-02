import 'package:flutter/material.dart';
import 'package:flutter_responsive_fix/core/theme/app_themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  static const String _themeKey = 'selected_theme';
  static const String _defaultKey = 'light';

  late ThemeData _currentTheme;
  late String _currentKey;

  ThemeData get currentTheme => _currentTheme;
  String get currentKey => _currentKey;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  ThemeNotifier() {
    final fallbackKey =
        appThemes.containsKey(_defaultKey) ? _defaultKey : appThemes.keys.first;

    _currentKey = fallbackKey;
    _currentTheme = appThemes[fallbackKey]!;
  }

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final savedKey = prefs.getString(_themeKey)?.toLowerCase();

    if (savedKey != null && appThemes.containsKey(savedKey)) {
      if (_currentKey != savedKey) {
        _currentKey = savedKey;
        _currentTheme = appThemes[savedKey]!;
        notifyListeners();
      }
    }
    _isLoaded = true;
  }

  Future<void> setTheme(String key) async {
    final normalizeKey = key.toLowerCase();
    if (!appThemes.containsKey(normalizeKey)) return;

    _currentKey = normalizeKey;
    _currentTheme = appThemes[normalizeKey]!;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeKey, normalizeKey);

    notifyListeners();
  }
}
