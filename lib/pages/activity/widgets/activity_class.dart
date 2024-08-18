import 'package:flutter/material.dart';

class DailyActivity {
  final String? title;
  final double? percentage;
  final Color? color;
  final String? time;
  final double? distance;
  final double? totalDistance;
  final String? calories;
  final String? imagePath;
  final String? unit;

  DailyActivity({
    this.title,
    this.percentage,
    this.color,
    this.time,
    this.distance,
    this.totalDistance,
    this.calories,
    this.imagePath,
    this.unit,
  });
}
