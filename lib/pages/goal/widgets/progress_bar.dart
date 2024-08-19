import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/goal_controller.dart';

class GoalProgressChart extends StatelessWidget {
  final GoalsController controller;

  const GoalProgressChart({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BarChart(
        BarChartData(
          maxY: 100,
          barGroups: _buildBarGroups(),
          titlesData: _buildTitles(),
          borderData: FlBorderData(show: false),
          barTouchData: BarTouchData(enabled: false),
          gridData: const FlGridData(
            show: true,
            drawVerticalLine: false,
            drawHorizontalLine: true,
          ),
        ),
      );
    });
  }

  List<BarChartGroupData> _buildBarGroups() {
    return controller.displayedData.asMap().entries.map((entry) {
      int index = entry.key;
      List<int> values = entry.value;

      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: values[0].toDouble(),
            color: Colors.cyan,
            width: 5,
          ),
          BarChartRodData(
            toY: values[1].toDouble(),
            color: Colors.orange,
            width: 5,
          ),
          BarChartRodData(
            toY: values[2].toDouble(),
            color: Colors.purple,
            width: 5,
          ),
        ],
      );
    }).toList();
  }

  FlTitlesData _buildTitles() {
    return FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: (double value, TitleMeta meta) {
            const style = TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            );
            String day = '';
            switch (value.toInt()) {
              case 0:
                day = 'Mon';
                break;
              case 1:
                day = 'Tue';
                break;
              case 2:
                day = 'Wed';
                break;
              case 3:
                day = 'Thu';
                break;
              case 4:
                day = 'Fri';
                break;
              case 5:
                day = 'Sat';
                break;
              case 6:
                day = 'Sun';
                break;
            }
            return SideTitleWidget(
              axisSide: meta.axisSide,
              child: Text(day, style: style),
            );
          },
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 40,
          getTitlesWidget: (double value, TitleMeta meta) {
            final style = TextStyle(
              color: Colors.grey[700],
              fontSize: 13,
            );
            String parentage = '';
            switch (value.toInt()) {
              case 0:
                parentage = '0%';
                break;
              case 20:
                parentage = '20%';
                break;
              case 40:
                parentage = '40%';
                break;
              case 60:
                parentage = '60%';
                break;
              case 80:
                parentage = '80%';
                break;
              case 100:
                parentage = '100%';
                break;
            }
            return SideTitleWidget(
              axisSide: meta.axisSide,
              child: Text(parentage, style: style),
            );
          },
        ),
      ),
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
    );
  }
}
