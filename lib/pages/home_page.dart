// ignore_for_file: unused_import

// Import necessary packages and widgets
import 'package:flutter/material.dart';

import '../data/k_test_food.dart';
import '../widgets/brand_logo.dart';
import '../widgets/category_button.dart';
import '../widgets/product_item.dart';
import '../widgets/promo_banner.dart';
import '../widgets/search_widget.dart';
import '../widgets/title_widget.dart';

// HomePage is a StatelessWidget that displays the main screen of the app
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current theme for consistent styling
    final theme = Theme.of(context);
    // Get the list of food items from test data
    var foods = kTestFood;

    return Scaffold(
      body: SafeArea(
        // CustomScrollView allows for scrollable content with slivers
        child: CustomScrollView(
          slivers: [
            // First section containing header elements
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Brand logo and app name
                    const BrandLogo(),
                    const SizedBox(height: 24),
                    // Search bar for finding food items
                    const SearchWidget(),
                    const SizedBox(height: 24),
                    // Category selection buttons
                    const CategoryButton(),
                    const SizedBox(height: 32),
                    // Promo section header
                    Text('Promo', style: theme.textTheme.headlineMedium),
                    const SizedBox(height: 16),
                    // Promotional banner
                    const PromoBanner(),
                    const SizedBox(height: 32),
                    // Hot menu section header
                    Text(
                      '🔥 Hot Menu This Week',
                      style: theme.textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            // Grid section displaying food items
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              sliver: SliverGrid(
                // Configure grid layout based on screen width
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).size.width < 600 ? 1 : 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 16,
                  childAspectRatio:
                      MediaQuery.of(context).size.width < 600 ? 1.1 : 1.3,
                ),
                // Build food items in the grid
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ProductItem(food: foods[index]),
                  childCount: foods.length,
                ),
              ),
            ),
            // Bottom padding for better scrolling experience
            const SliverPadding(padding: EdgeInsets.only(bottom: 100)),
          ],
        ),
      ),
    );
  }
}
