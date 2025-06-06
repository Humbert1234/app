// ignore_for_file: unused_import, duplicate_import

// Import necessary packages
import 'package:flutter/material.dart';
import 'package:app/pages/home_page.dart';
import 'themes/app_theme.dart';

// Entry point of the application
void main() {
  runApp(const MyApp());
}

// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      title: 'Food Test',
      // Apply light theme for the app
      theme: AppTheme.lightTheme,
      // Apply dark theme for the app
      darkTheme: AppTheme.darkTheme,
      // Automatically switch between light and dark theme based on system settings
      themeMode: ThemeMode.system,
      // Set HomePage as the initial screen
      home: const HomePage(),
    );
  }
}
