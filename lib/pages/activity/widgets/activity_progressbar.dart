import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/activity_controller.dart';

class ActivityProgressBar extends StatelessWidget {
  const ActivityProgressBar({
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
          Row(
            children: [
              const Text(
                "You've burned",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Obx(
                () => Text(
                  "🔥 ${controller.totalCaloriesBurned.value} ",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "cal",
                style: TextStyle(fontSize: 17, color: Colors.grey[800]),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Obx(
            () => IntrinsicHeight(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: controller.dailyActivities.map(
                      (activity) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text(
                                activity.title!,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 5),
                              activity.imagePath != null
                                  ? Image.asset(activity.imagePath!,
                                      width: 40, height: 40)
                                  : const SizedBox.shrink(),
                            ],
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 15),
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.grey[400],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: controller.dailyActivities.map(
                        (activity) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Row(
                              children: [
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value: activity.percentage! / 100,
                                    backgroundColor: Colors.grey.shade200,
                                    minHeight: 10,
                                    color: activity.color!,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "${activity.percentage!.toInt()}%",
                                  style: TextStyle(
                                      color: activity.color, fontSize: 15),
                                ),
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
