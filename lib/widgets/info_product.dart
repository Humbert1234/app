import 'package:flutter/material.dart';

import '../constants/app_assets.dart';
import '../models/food_model.dart';
import 'text_icon_widget.dart';

// InfoProduct displays additional information about a food item
class InfoProduct extends StatelessWidget {
  // Food model containing the information to be displayed
  final FoodModel food;
  const InfoProduct({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32, left: 18, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Display rating with star icon
          TextIconWidget(text: '${food.rating}/5', icon: AppAssets.iconStar),
          // Display distance with location icon
          TextIconWidget(
            text: '${food.location}Km',
            icon: AppAssets.iconLocation,
          ),
          // Display delivery time with clock icon
          TextIconWidget(text: '${food.time}min', icon: AppAssets.iconTime),
        ],
      ),
    );
  }
}
