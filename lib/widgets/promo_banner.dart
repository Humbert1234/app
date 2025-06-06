// ignore_for_file: deprecated_member_use

// Import necessary packages
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

// PromoBanner displays a promotional banner with gradient overlay and text
class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
      child: SizedBox(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            // Background image for the promo banner
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('assets/images/food_banner.png'),
            ),
            // Gradient overlay for better text visibility
            Container(
              height: 134,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppColors.primary,
                    AppColors.primary.withOpacity(0.1),
                  ],
                ),
              ),
            ),
            // Promotional text with different styles
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                text: const TextSpan(
                  text: 'Get Up To\n',
                  style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '25% Off',
                      style: TextStyle(color: AppColors.secondary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
