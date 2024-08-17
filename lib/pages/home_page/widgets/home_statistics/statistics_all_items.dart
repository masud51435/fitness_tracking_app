import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/statistics_controller.dart';
import 'heart_rate_card.dart';
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

