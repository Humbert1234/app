// Import necessary packages
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

// PriceWidget displays the price of a food item with a label
class PriceWidget extends StatelessWidget {
  // Price value to be displayed
  final double price;
  const PriceWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label for the price
        const Text('Price', style: TextStyle(color: AppColors.grey)),
        // Actual price value with currency
        Text(
          'CFA $price',
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: AppColors.secondary,
          ),
        ),
      ],
    );
  }
}
