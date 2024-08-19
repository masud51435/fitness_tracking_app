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
      child: Obx(
        () => BarChart(
          BarChartData(
            maxY: controller.maxY,
            borderData: FlBorderData(show: false),
            barTouchData: BarTouchData(enabled: false),
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    const style = TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    );

                    String day = '';
                    switch (value.toInt()) {
                      case 0:
                        day = 'S';
                        break;
                      case 1:
                        day = 'M';
                        break;
                      case 2:
                        day = 'T';
                        break;
                      case 3:
                        day = 'W';
                        break;
                      case 4:
                        day = 'T';
                        break;
                      case 5:
                        day = 'F';
                        break;
                      case 6:
                        day = 'S';
                        break;
                    }
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: Text(day, style: style),
                    );
                  },
                ),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    const style = TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    );

                    String percentage = '';
                    switch (value.toInt()) {
                      case 0:
                        percentage = '0';
                        break;
                      case 1000:
                        percentage = '1k';
                        break;
                      case 2000:
                        percentage = '2k';
                        break;
                    }
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: Text(percentage, style: style),
                    );
                  },
                ),
              ),
              rightTitles: const AxisTitles(
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
            barGroups: _generateBarGroups(controller),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> _generateBarGroups(ProfileController controller) {
    return List.generate(
      controller.weeklyGoals.length,
      (index) {
        bool isHighlighted = controller.weeklyGoals[index] >= controller.maxY;
        return BarChartGroupData(
          x: index,
          barRods: [
            BarChartRodData(
              toY: controller.weeklyGoals[index].toDouble(),
              color: isHighlighted ? Colors.red : Colors.grey[800],
              width: 18,
              borderRadius: BorderRadius.circular(0),
            ),
          ],
        );
      },
    );
  }
}
