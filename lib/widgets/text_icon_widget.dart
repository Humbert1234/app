import 'package:flutter/material.dart';

class TextIconWidget extends StatelessWidget {
  final String text;
  final String icon;
  const TextIconWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon, width: 18),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
