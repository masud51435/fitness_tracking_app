import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/circle_icon_button.dart';
import '../../../../controllers/statistics_controller.dart';
import '../../../../core/app_colors.dart';

class StatisticsProgressIndicator extends StatelessWidget {
  const StatisticsProgressIndicator({
    super.key,
    required this.controller,
  });

  final StatisticsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(color: greyColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "In-Progress  ",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[700],
                        ),
                      ),
                      TextSpan(
                        text: "${controller.progress.value}%",
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CircleIconButton(
                width: 2,
                padding: 3,
                icon: Icon(
                  Icons.arrow_forward,
                  size: 22,
                  color: Colors.grey[600],
                ),
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 15),
          Obx(
            () => LinearProgressIndicator(
              value: controller.progress.value / 100,
              backgroundColor: Colors.grey[600],
              color: redColor,
              minHeight: 7,
            ),
          ),
          const SizedBox(height: 15),
          Obx(
            () => Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "You've burned ",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[700],
                    ),
                  ),
                  TextSpan(
                    text: "🔥 ${controller.caloriesBurned.value} ",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "out of 2,000 cal.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[700],
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
