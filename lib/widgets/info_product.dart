import 'package:flutter/material.dart';

import '../constants/app_assets.dart';
import '../models/food_model.dart';
import 'text_icon_widget.dart';

class InfoProduct extends StatelessWidget {
  final FoodModel food;
  const InfoProduct({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32, left: 18, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextIconWidget(
            text: '${food.rating}/5',
            icon: AppAssets.iconStar,
          ),
          TextIconWidget(
            text: '${food.location}Km',
            icon: AppAssets.iconLocation,
          ),
          TextIconWidget(
            text: '${food.time}min',
            icon: AppAssets.iconTime,
          ),
        ],
      ),
    );
  }
}
