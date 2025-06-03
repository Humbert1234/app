import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class HeartWidget extends StatefulWidget {
  const HeartWidget({
    super.key,
  });

  @override
  State<HeartWidget> createState() => _HeartWidgetState();
}

bool isTap = false;

class _HeartWidgetState extends State<HeartWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isTap = !isTap;
      }),
      child: isTap
          ? const Icon(
              Icons.favorite,
              color: AppColors.error,
            )
          : const Icon(
              Icons.favorite_border,
              color: AppColors.bg,
            ),
    );
  }
}
