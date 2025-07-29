import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.scaffoldBackground,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.appBarBackground,
    foregroundColor: AppColors.textPrimary,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.textPrimary),
    titleTextStyle: TextStyle(
      color: AppColors.textPrimary,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    surface: AppColors.surface,
    background: AppColors.background,
    error: AppColors.error,
    onPrimary: AppColors.textOnPrimary,
    onSecondary: AppColors.textOnSecondary,
    onSurface: AppColors.textOnSurface,
    onBackground: AppColors.textPrimary,
    onError: AppColors.textOnPrimary,
  ),
  cardColor: AppColors.card,
  dividerColor: AppColors.divider,
  iconTheme: const IconThemeData(color: AppColors.textSecondary),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.textPrimary),
    bodyMedium: TextStyle(color: AppColors.textSecondary),
    bodySmall: TextStyle(color: AppColors.textTertiary),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: AppColors.inputFill,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.inputBorder),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.inputFocused),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.inputError),
    ),
  ),
);
