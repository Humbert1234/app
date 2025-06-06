import 'package:flutter/material.dart';
import '../constants/app_assets.dart';

// TotalItemWidget provides quantity control for food items
class TotalItemWidget extends StatefulWidget {
  const TotalItemWidget({super.key});

  @override
  State<TotalItemWidget> createState() => _TotalItemWidgetState();
}

// Global variable to track the total quantity
int total = 0;

class _TotalItemWidgetState extends State<TotalItemWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Decrease quantity button
          GestureDetector(
            onTap: () => setState(() {
              if (total != 0) {
                total--;
              }
            }),
            child: Image.asset(AppAssets.iconMinus, width: 24),
          ),
          // Display current quantity
          Text(
            total.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          // Increase quantity button
          GestureDetector(
            onTap: () => setState(() {
              total++;
            }),
            child: Image.asset(AppAssets.iconPlus, width: 24),
          ),
        ],
      ),
    );
  }
}
