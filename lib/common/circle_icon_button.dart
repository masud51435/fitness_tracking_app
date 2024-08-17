import 'dart:ffi';

import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.padding = 10,
    this.width = 1,
  });

  final Widget icon;
  final void Function() onTap;
  final double padding;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: greyColor, width: width),
        ),
        child: icon,
      ),
    );
  }
}
