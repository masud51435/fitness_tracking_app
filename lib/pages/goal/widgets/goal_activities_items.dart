import 'package:fitness_tracking_app/controllers/goal_controller.dart';
import 'package:fitness_tracking_app/pages/goal/widgets/goal_activity_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/section_heading.dart';

class GoalActivitiesItems extends StatelessWidget {
  const GoalActivitiesItems({
    super.key,
    required this.controller,
  });

  final GoalsController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppSectionHeading(text: 'Activities'),
        Obx(
          () => ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.goalActivityList.length,
            itemBuilder: (BuildContext context, int index) {
              var activity = controller.goalActivityList[index];
              return GoalActivityCard(
                image: activity.image,
                title: activity.title,
                target: activity.target,
                time: activity.time,
                onTap: () {},
              );
            },
          ),
        ),
      ],
    );
  }
}
