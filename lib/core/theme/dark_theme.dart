import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.primaryDark,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.appBarBackgroundDark,
    foregroundColor: AppColors.textPrimaryDark,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.textPrimaryDark),
    titleTextStyle: TextStyle(
      color: AppColors.textPrimaryDark,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primaryDark,
    secondary: AppColors.secondaryDark,
    surface: AppColors.surfaceDark,
    background: AppColors.backgroundDark,
    error: AppColors.errorDark,
    onPrimary: AppColors.textOnPrimary,
    onSecondary: AppColors.textOnSecondary,
    onSurface: AppColors.textOnSurfaceDark,
    onBackground: AppColors.textPrimaryDark,
    onError: AppColors.textOnPrimary,
  ),
  cardColor: AppColors.cardDark,
  dividerColor: AppColors.dividerDark,
  iconTheme: const IconThemeData(color: AppColors.textSecondaryDark),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.textPrimaryDark),
    bodyMedium: TextStyle(color: AppColors.textSecondaryDark),
    bodySmall: TextStyle(color: AppColors.textTertiaryDark),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: AppColors.inputFillDark,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.inputBorderDark),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.inputFocused),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.inputError),
    ),
  ),
);
