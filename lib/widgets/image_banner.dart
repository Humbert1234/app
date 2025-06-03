import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ImageBanner extends StatelessWidget {
  final String imageUrl;
  const ImageBanner({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(imageUrl),
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
