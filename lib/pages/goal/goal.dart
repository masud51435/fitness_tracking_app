import 'package:fitness_tracking_app/common/Custom_appbar.dart';
import 'package:fitness_tracking_app/common/custom_divider.dart';
import 'package:fitness_tracking_app/controllers/goal_controller.dart';
import 'package:fitness_tracking_app/pages/goal/widgets/goal_activities_items.dart';
import 'package:fitness_tracking_app/pages/goal/widgets/goal_progress_barscreen.dart';
import 'package:flutter/material.dart';

import 'widgets/goal_progress.dart';
import 'widgets/top_banner.dart';

class Goal extends StatelessWidget {
  const Goal({super.key});

  @override
  Widget build(BuildContext context) {
    final GoalsController controller = GoalsController.instance;
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        paddingHorizontal: 0,
        title: Text(
          'Goal',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomDivider(topSpace: 10),
            TopBanner(controller: controller),
            const CustomDivider(topSpace: 0),
            GoalProgress(controller: controller),
            GoalActivitiesItems(controller: controller),
            const CustomDivider(topSpace: 15),
            SizedBox(
              height: 360,
              child: GoalProgressBarScreen(controller: controller),
            ),
          ],
        ),
      ),
    );
  }
}
