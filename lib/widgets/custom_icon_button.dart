// Import necessary packages
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import '../constants/app_assets.dart';
import '../Authtentication/login.dart';
import '../services/auth_service.dart';

// CustomIconButton provides a styled button with an icon for cart actions
class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
      // Elevated button with cart icon and text
      child: ElevatedButton(
        onPressed: () async {
          // Check if user is logged in
          bool isLoggedIn = await AuthService().isLoggedIn();

          if (!isLoggedIn) {
            // If not logged in, navigate to login screen
            if (!context.mounted) return;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          } else {
            // If logged in, proceed with adding to cart
            // Add your cart logic here
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Item added to cart successfully!'),
                duration: Duration(seconds: 2),
              ),
            );
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Cart icon
            Image.asset(AppAssets.iconCart, width: 24),
            const SizedBox(width: 16),
            // Button text
            const Text(
              'Add To Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
