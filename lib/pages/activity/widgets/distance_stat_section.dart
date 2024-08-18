import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/activity_controller.dart';
import 'stat_card.dart';

class DistanceAndStatSection extends StatelessWidget {
  const DistanceAndStatSection({
    super.key,
    required this.controller,
  });

  final DailyActivityController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 8),
                    Text(
                      "Distance",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(
                      () => Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'You have covered ',
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: '${controller.totalDistance.value}',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: ' mi',
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Obx(
            () => Row(
              children: [
                StatCard(
                  icon: Icons.directions_walk,
                  color: Colors.green,
                  label: "Steps",
                  value: "${controller.totalSteps.value}",
                ),
                const SizedBox(width: 20),
                StatCard(
                  icon: Icons.timer,
                  color: Colors.orange,
                  label: "Time",
                  value: controller.totalTime.value,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
