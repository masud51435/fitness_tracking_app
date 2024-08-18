import 'package:flutter/material.dart';

import '../../../common/custom_divider.dart';
import '../../../common/section_heading.dart';
import '../../../controllers/profile_controller.dart';
import 'bottom_bar_goals.dart';
import 'porgress_bar.dart';
import 'weekly_progress_report_row.dart';

class WeekProgressBarChart extends StatelessWidget {
  const WeekProgressBarChart({
    super.key,
    required this.controller,
  });

  final ProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppSectionHeading(text: "This Week's progress"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              WeeklyProgressReportRow(controller: controller),
              ProgressBar(controller: controller),
              const SizedBox(height: 20),
              ProgressGoals(controller: controller),
            ],
          ),
        ),
        const CustomDivider(
          topSpace: 20,
          thickness: 10,
        ),
      ],
    );
  }
}








