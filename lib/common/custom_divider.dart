import 'package:fitness_tracking_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.topSpace = 25,
    this.thickness = 20,
  });
  final double topSpace, thickness;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topSpace),
      child: Divider(
        thickness: thickness,
        color: greyColor.withOpacity(0.16),
      ),
    );
  }
}
