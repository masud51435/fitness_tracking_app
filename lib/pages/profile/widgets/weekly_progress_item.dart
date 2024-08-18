import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class WeeklyProgressItem extends StatelessWidget {
  const WeeklyProgressItem({
    super.key,
    required this.icon,
    required this.title,
    required this.unit,
    required this.color,
  });

  final IconData icon;
  final Color color;
  final String title;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        const SizedBox(width: 3),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 2),
        Text(
          unit,
          style: TextStyle(
            color: greyColor,
          ),
        ),
      ],
    );
  }
}