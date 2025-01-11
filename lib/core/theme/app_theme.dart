import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {

  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.background,

    /// AppBar Theme
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: appTextTheme.titleMedium,
    ),

    /// Card Theme Data
    cardTheme: const CardTheme(
        color: AppColors.card,
        elevation: 15,
    ),


    /// Button Theme
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),

    /// List Tile Theme Data
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      textColor: AppColors.primary,
      iconColor: AppColors.primary,
    ),

    /// Text Theme
    textTheme: appTextTheme,

    /// Divider Theme
    dividerTheme: DividerThemeData(
      color: AppColors.divider,
    ),

    /// Text Field Theme
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.green),
      ),
    ),
  );
}

