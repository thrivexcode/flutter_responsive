import 'package:flutter/material.dart';
import 'package:flutter_responsive_fix/core/assets/fonts.gen.dart';
import 'app_colors.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: LightTheme.background,
  cardColor: LightTheme.surface,
  primaryColor: LightTheme.accent,
  iconTheme: const IconThemeData(color: LightTheme.primaryText),
  primaryIconTheme: const IconThemeData(color: LightTheme.primaryText),
  fontFamily: FontFamily.inter,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: LightTheme.accent,
    onPrimary: Colors.white,
    secondary: LightTheme.tagHighlight,
    onSecondary: LightTheme.primaryText,
    error: LightTheme.error,
    onError: Colors.white,
    surface: LightTheme.surface,
    onSurface: LightTheme.primaryText,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 14, color: LightTheme.primaryText),
    bodyMedium: TextStyle(fontSize: 12, color: LightTheme.secondaryText),
    labelLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: LightTheme.accent,
    foregroundColor: LightTheme.surface,
    elevation: 0,
    iconTheme: IconThemeData(color: LightTheme.primaryText),
    titleTextStyle: TextStyle(
      color: LightTheme.primaryText,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: LightTheme.surface,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: LightTheme.border),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: LightTheme.border),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: LightTheme.accent, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: LightTheme.error),
    ),
    labelStyle: const TextStyle(color: LightTheme.secondaryText),
    hintStyle: const TextStyle(color: LightTheme.secondaryText),
    prefixIconColor: LightTheme.accent,
    suffixIconColor: LightTheme.accent,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: LightTheme.accent,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      iconColor: Colors.white,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: LightTheme.accent,
      side: const BorderSide(color: LightTheme.accent),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: LightTheme.accent,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: LightTheme.accent,
    foregroundColor: Colors.white,
  ),
  cardTheme: CardTheme(
    elevation: 0,
    shadowColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    clipBehavior: Clip.antiAlias,
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: LightTheme.accent,
    contentTextStyle: const TextStyle(color: Colors.white),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    behavior: SnackBarBehavior.floating,
  ),
  dividerTheme: const DividerThemeData(
    color: LightTheme.border,
    thickness: 1,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: LightTheme.accent,
    unselectedItemColor: LightTheme.secondaryText,
    backgroundColor: LightTheme.background,
    elevation: 4,
    selectedIconTheme: IconThemeData(size: 24),
    unselectedIconTheme: IconThemeData(size: 20),
  ),
);

final Map<String, ThemeData> appThemes = {
  'light': lightTheme,
};
