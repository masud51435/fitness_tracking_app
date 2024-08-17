import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/statistics_controller.dart';
import 'statistics_item.dart';

class StatisticsAllItems extends StatelessWidget {
  const StatisticsAllItems({
    super.key,
    required this.controller,
  });

  final StatisticsController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: [
              StatisticsItem(
                icon: Icons.directions_walk,
                label: "Steps",
                value: Obx(
                  () => Text(
                    "${controller.steps.value}",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                color: Colors.green,
                progressBar: Obx(
                  () => LinearProgressIndicator(
                    value: controller.steps.value / 25000,
                    backgroundColor: Colors.green[100],
                    color: Colors.green.shade500,
                    minHeight: 6,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              StatisticsItem(
                icon: Icons.bedtime,
                label: "Sleep",
                value: Obx(
                  () => Text(
                    controller.sleep.value,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                color: Colors.purple,
                progressBar: Obx(
                  () => LinearProgressIndicator(
                    value: controller.steps.value / 25000,
                    backgroundColor: Colors.purple[100],
                    color: Colors.purple,
                    minHeight: 6,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: HeartRateCard(controller: controller),
        ),
      ],
    );
  }
}

class HeartRateCard extends StatelessWidget {
  const HeartRateCard({
    super.key,
    required this.controller,
  });

  final StatisticsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(Icons.favorite, color: Colors.orange),
                const SizedBox(width: 8),
                Text(
                  "Heart rate",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Obx(
                  () => Text(
                    "${controller.heartRate.value} bpm",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: Get.height * 0.116,
            child: Sparkline(
              data: controller.heartRateData,
              lineColor: Colors.orange,
              fillMode: FillMode.below,
              useCubicSmoothing: true,
              fillGradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.orange.withOpacity(0.5),
                  Colors.orange.withOpacity(0.1)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
