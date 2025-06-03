// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../data/k_test_food.dart';
import '../widgets/brand_logo.dart';
import '../widgets/category_button.dart';
import '../widgets/product_item.dart';
import '../widgets/promo_banner.dart';
import '../widgets/search_widget.dart';
import '../widgets/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var foods = kTestFood;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BrandLogo(),
                    const SizedBox(height: 24),
                    const SearchWidget(),
                    const SizedBox(height: 24),
                    const CategoryButton(),
                    const SizedBox(height: 32),
                    Text('Promo', style: theme.textTheme.headlineMedium),
                    const SizedBox(height: 16),
                    const PromoBanner(),
                    const SizedBox(height: 32),
                    Text(
                      '🔥 Hot Menu This Week',
                      style: theme.textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).size.width < 600 ? 1 : 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 16,
                  childAspectRatio:
                      MediaQuery.of(context).size.width < 600 ? 1.1 : 1.3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ProductItem(food: foods[index]),
                  childCount: foods.length,
                ),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(bottom: 100)),
          ],
        ),
      ),
    );
  }
}
