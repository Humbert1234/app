import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../models/food_model.dart';

class TitleProductWidget extends StatelessWidget {
  final FoodModel food;
  const TitleProductWidget({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 18, left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            food.name,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            food.seller,
            style: const TextStyle(
              color: AppColors.grey,
            ),
          )
        ],
      ),
    );
  }
}
