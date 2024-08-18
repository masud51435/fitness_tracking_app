import 'package:flutter/material.dart';

import '../../../common/custom_divider.dart';
import '../../../common/section_heading.dart';
import '../../../controllers/profile_controller.dart';
import 'profile_activityitem.dart';

class SleepAndGoalSection extends StatelessWidget {
  const SleepAndGoalSection({
    super.key,
    required this.controller,
  });

  final ProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppSectionHeading(text: 'Your Goal Setting'),
        const ProfileActivityItem(
          icon: Icons.local_fire_department,
          color: Colors.red,
          title: 'Calories to burn',
          value: 2000,
          unit: 'cal',
          time: '5 days',
        ),
        const ProfileActivityItem(
          icon: Icons.directions_walk,
          color: Colors.green,
          title: 'Steps to cover',
          value: 20000,
          unit: 'steps',
          time: 'Daily',
        ),
        const CustomDivider(
          topSpace: 0,
          thickness: 10,
        ),
        const AppSectionHeading(text: 'Your sleep cycle'),
        const ProfileActivityItem(
          icon: Icons.bedtime,
          color: Colors.purple,
          title: 'Bed time',
          value: 10.00,
          unit: 'PM',
          time: 'Daily',
        ),
        ProfileActivityItem(
          icon: Icons.sunny,
          color: Colors.orange[200],
          title: 'wake-up time',
          value: 6.00,
          unit: 'AM',
          time: 'Daily',
        ),
        const CustomDivider(
          topSpace: 0,
          thickness: 10,
        ),
      ],
    );
  }
}