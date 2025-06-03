import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors (Orange/Red Accent)
  static const primary = Color(0xFFFF6B35); // A vibrant orange-red
  static const primaryLight = Color(0xFFFF8E61); // Lighter shade
  static const primaryDark = Color(0xFFE05A2B); // Darker shade

  // Secondary Colors (Could be a subtle contrast or neutral for highlights)
  static const secondary = Color(0xFF4A4A4A); // Dark grey for text/icons
  static const secondaryLight = Color(0xFF757575); // Lighter grey
  static const secondaryDark = Color(0xFF212121); // Very dark grey/nearly black

  // Background Colors
  static const bg = Color(0xFFFFFFFF); // Clean white background
  static const bgDark = Color(0xFF121212); // Dark background for dark mode
  static const surface = Color(0xFFFFFFFF); // White surface for cards/elements
  static const surfaceDark = Color(
    0xFF1E1E1E,
  ); // Dark surface for dark mode cards

  // Text Colors
  static const textPrimary = Color(0xFF212121); // Primary text color (dark)
  static const textSecondary = Color(0xFF616161); // Secondary text color (grey)
  static const textLight = Color(
    0xFFBDBDBD,
  ); // Light text color (for hints, disabled)
  static const textAccent = Color(
    0xFFFF6B35,
  ); // Accent text color (matching primary)

  // Status Colors
  static const success = Color(0xFF4CAF50); // Green
  static const error = Color(0xFFF44336); // Red
  static const warning = Color(0xFFFF9800); // Orange
  static const info = Color(0xFF2196F3); // Blue

  // Additional Colors
  static const accent = Color(0xFF00BCD4); // Cyan (example accent)
  static const grey = Color(0xFF9E9E9E); // Standard grey
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const transparent = Color(0x00000000);

  // Gradient Colors (for the promotional banner)
  static const gradientStart = Color(0xFF212121); // Dark start
  static const gradientEnd = Color(0xFF4A4A4A); // Lighter dark end
}
