import 'package:fitness_tracking_app/pages/goal/widgets/progress_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/section_heading.dart';
import '../../../controllers/goal_controller.dart';

class GoalProgress extends StatelessWidget {
  const GoalProgress({
    super.key,
    required this.controller,
  });

  final GoalsController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionHeading(
          text: 'Progress',
          anotherItem: InkWell(
            onTap: () {},
            child: const Text(
              'See All',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          height: 230,
          child: Obx(
            () => ListView.builder(
              itemExtent: 200,
              scrollDirection: Axis.horizontal,
              itemCount: controller.workoutList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ProgressItem(
                    workout: controller.workoutList[index],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
