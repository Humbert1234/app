// Import necessary packages
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

// HeartWidget provides a favorite/like button with animation
class HeartWidget extends StatefulWidget {
  const HeartWidget({super.key});

  @override
  State<HeartWidget> createState() => _HeartWidgetState();
}

// Global variable to track the favorite state
bool isTap = false;

class _HeartWidgetState extends State<HeartWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => setState(() {
            // Toggle favorite state
            isTap = !isTap;
          }),
      child:
          isTap
              // Show filled heart when favorited
              ? const Icon(Icons.favorite, color: AppColors.error)
              // Show outline heart when not favorited
              : const Icon(Icons.favorite_border, color: AppColors.bg),
    );
  }
}
