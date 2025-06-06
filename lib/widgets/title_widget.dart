// Import necessary packages
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

// TitleWidget displays a section title with optional "See All" link
class TitleWidget extends StatelessWidget {
  // Title text to be displayed
  final String title;
  // Whether to show the "See All" link
  final bool isSeeAll;

  const TitleWidget({super.key, required this.title, this.isSeeAll = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Main title text
          Text(
            title,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Optional "See All" link
          isSeeAll
              ? const Text(
                'See All',
                style: TextStyle(color: AppColors.secondary, fontSize: 13),
              )
              : Container(),
        ],
      ),
    );
  }
}
