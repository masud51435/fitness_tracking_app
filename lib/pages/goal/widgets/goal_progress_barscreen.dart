import 'package:fitness_tracking_app/controllers/goal_controller.dart';
import 'package:fitness_tracking_app/core/app_colors.dart';
import 'package:fitness_tracking_app/pages/goal/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bar_bottom_indicator.dart';

class GoalProgressBarScreen extends StatelessWidget {
  final GoalsController controller;

  const GoalProgressBarScreen({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Goal Progress',
                  style: Theme.of(context).textTheme.headlineSmall!.apply(
                        fontWeightDelta: 2,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Obx(
                  () => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: greyColor),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: controller.selectedTimeFrame.value,
                        isExpanded: false,
                        icon: const Icon(Icons.arrow_drop_down, size: 30),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            controller.changeTimeFrame(newValue);
                          }
                        },
                        items: <String>['Weekly', 'Monthly', 'Yearly']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GoalProgressChart(
                controller: controller,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BarColorIndicator(color: Colors.cyan, text: 'Workout'),
              SizedBox(width: 30),
              BarColorIndicator(color: Colors.orange, text: 'Calories'),
              SizedBox(width: 30),
              BarColorIndicator(color: Colors.purple, text: 'Steps'),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

