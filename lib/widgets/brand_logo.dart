// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../Authtentication/login.dart';
import '../constants/app_colors.dart';
import '../services/auth_service.dart';

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
                      text: ' Test',
                      style: TextStyle(color: AppColors.secondary),
                    ),
                  ],
                ),
              ),
              const Text(
                'Morning People',
                style: TextStyle(fontSize: 14, color: AppColors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
