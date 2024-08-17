import 'package:fitness_tracking_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Divider(
        thickness: 20,
        color: greyColor.withOpacity(0.16),
      ),
    );
  }
}
