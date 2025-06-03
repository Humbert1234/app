import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class PriceWidget extends StatelessWidget {
  final double price;
  const PriceWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Price', style: TextStyle(color: AppColors.grey)),
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
