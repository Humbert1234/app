// Import necessary packages
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../models/food_model.dart';

// TitleProductWidget displays the name and seller of a food item
class TitleProductWidget extends StatelessWidget {
  // Food model containing the title information
  final FoodModel food;
  const TitleProductWidget({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 18, left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display the food name
          Text(
            food.name,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Display the seller name
          Text(food.seller, style: const TextStyle(color: AppColors.grey)),
        ],
      ),
    );
  }
}
