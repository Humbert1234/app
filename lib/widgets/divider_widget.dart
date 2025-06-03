import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 16, bottom: 32),
        height: 4,
        width: 70,
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
