// Import necessary packages
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

// ImageBanner displays a food image with a gradient overlay
class ImageBanner extends StatelessWidget {
  // URL of the image to be displayed
  final String imageUrl;
  const ImageBanner({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main food image
        Image.asset(imageUrl),
        // Gradient overlay for better visibility
        Container(
          width: double.infinity,
          height: 310,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primary,
                // ignore: deprecated_member_use
                AppColors.primary.withOpacity(0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
