import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/profile_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.controller,
  });

  final ProfileController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: Get.width,
      child: BarChart(
        BarChartData(
          borderData: FlBorderData(show: false),
          titlesData: const FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                // getTitles: (value) {
                //   return controller.goalData[value.toInt()].day;
                // },
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
          ),
          gridData: const FlGridData(
            show: true,
            drawVerticalLine: false,
            drawHorizontalLine: true,
          ),
          barGroups: controller.goalData.asMap().entries.map((entry) {
            return BarChartGroupData(
              x: entry.key + 1,
              barRods: [
                BarChartRodData(
                  toY: entry.value.value.toDouble(),
                  color: Colors.grey[800],
                  width: 18,
                  borderRadius: BorderRadius.circular(0),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}