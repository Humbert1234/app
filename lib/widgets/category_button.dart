// Import necessary packages
import 'package:flutter/material.dart';

// CategoryButton provides a horizontal scrollable list of food categories
class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
      // Horizontal scrollable list of category buttons
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          // Cameroonian food category button
          ElevatedButton(onPressed: () {}, child: const Text('Cameroonian')),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
