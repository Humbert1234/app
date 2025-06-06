import 'package:flutter/material.dart';
import '../models/food_model.dart';

import '../constants/app_colors.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/description_widget.dart';
import '../widgets/divider_widget.dart';
import '../widgets/image_banner.dart';
import '../widgets/info_product.dart';
import '../widgets/price_widget.dart';
import '../widgets/title_product_widget.dart';
import '../widgets/total_item_widget.dart';

// DetailProductPage displays detailed information about a selected food item
class DetailProductPage extends StatelessWidget {
  // Food model containing all the details of the selected food item
  final FoodModel food;
  const DetailProductPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      // Allow the body to extend behind the app bar
      extendBodyBehindAppBar: true,
      // Custom app bar with transparent background
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.transparent,
        shadowColor: Colors.transparent,
        title: Center(child: Text('Detail ${food.name}')),
      ),
      // Scrollable content
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Large banner image of the food item
            ImageBanner(imageUrl: food.imageUrl),
            // Visual separator
            const DividerWidget(),
            // Title and basic info of the food item
            TitleProductWidget(food: food),
            // Additional information about the food item
            InfoProduct(food: food),
            // Detailed description of the food item
            DescriptionWidget(text: food.desc),
            // Price and quantity selection section
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Display the price of the food item
                  PriceWidget(price: food.price),
                  // Widget to adjust quantity of the food item
                  const TotalItemWidget(),
                ],
              ),
            ),
            // Custom button for actions (e.g., add to cart)
            const CustomIconButton(),
          ],
        ),
      ),
    );
  }
}
