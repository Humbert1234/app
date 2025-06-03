import 'package:flutter/material.dart';

import '../Authtentication/login.dart';
import '../constants/app_colors.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Food',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: AppColors.primary,
                  ),
                  children: [
                    TextSpan(
                      text: ' Craft',
                      style: TextStyle(color: AppColors.secondary),
                    ),
                  ],
                ),
              ),
              const Text(
                'Morning Marta',
                style: TextStyle(fontSize: 14, color: AppColors.grey),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              //Navigate to log out
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: const Text("LOG OUT", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
