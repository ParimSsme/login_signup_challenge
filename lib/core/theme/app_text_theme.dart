import 'package:flutter/material.dart';
import 'app_colors.dart';

const TextTheme appTextTheme = TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'Mono',
      fontSize: 40,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimary,
    ),
    titleSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimary,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.secondary,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.secondary,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      color: AppColors.secondary,
    ),
    labelMedium: TextStyle(
      fontSize: 15,
      color: AppColors.textSecondary,
    )
);
