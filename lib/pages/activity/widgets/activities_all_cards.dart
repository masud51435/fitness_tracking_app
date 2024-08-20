import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/section_heading.dart';
import '../../../controllers/activity_controller.dart';
import 'activities_card.dart';

class ActivitiesSection extends StatelessWidget {
  const ActivitiesSection({
    super.key,
    required this.controller,
  });

  final DailyActivityController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppSectionHeading(text: 'Activities'),
        Obx(
          () {
            // Filter out DailyActivities where the title is 'Others'
            final filterActivity = controller.dailyActivities
                .where((activity) => activity.title != "Others")
                .toList();
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: filterActivity.length,
              itemBuilder: (BuildContext context, int index) {
                var activity = filterActivity[index];
                return ActivitiesCard(
                  title: activity.title!,
                  time: activity.time!,
                  distance: activity.distance.toString(),
                  totalDistance: activity.totalDistance.toString(),
                  unit: activity.unit!,
                  calories: activity.calories!,
                  imagePath: activity.imagePath!,
                  pauseTap: () {},
                );
              },
            );
          },
        ),
      ],
    );
  }
}
