import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ThemeInput {
  static const inputDecoration = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: AppColors.primaryLight, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: AppColors.primaryLight, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: AppColors.primary, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: AppColors.error, width: 1),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: AppColors.error, width: 2),
    ),
    fillColor: AppColors.white,
    filled: true,
    hintStyle: TextStyle(
      fontSize: 14,
      color: AppColors.grey,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    errorStyle: TextStyle(
      fontSize: 12,
      color: AppColors.error,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    iconColor: AppColors.primary,
    prefixIconColor: AppColors.primary,
    suffixIconColor: AppColors.primary,
  );
}
