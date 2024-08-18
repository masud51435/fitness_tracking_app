import 'package:flutter/material.dart';

import '../../../controllers/profile_controller.dart';
import 'weekly_progress_item.dart';

class WeeklyProgressReportRow extends StatelessWidget {
  const WeeklyProgressReportRow({
    super.key,
    required this.controller,
  });

  final ProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          WeeklyProgressItem(
            icon: Icons.directions_walk,
            title: '${controller.weeklyTotalSteps}',
            unit: 'steps',
            color: Colors.green,
          ),
          const SizedBox(width: 10),
          WeeklyProgressItem(
            icon: Icons.local_fire_department,
            title: '${controller.weeklyTotalCaloriesBurned}',
            unit: 'cal',
            color: Colors.red,
          ),
          const SizedBox(width: 10),
          WeeklyProgressItem(
            icon: Icons.location_on,
            title: '${controller.weeklyTotalDistance}',
            unit: 'mi',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}