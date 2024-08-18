import 'package:fitness_tracking_app/common/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../common/section_heading.dart';
import '../../../controllers/activity_controller.dart';
import 'activity_progressbar.dart';
import 'date_selector.dart';
import 'distance_stat_section.dart';

class TodayActivities extends StatelessWidget {
  const TodayActivities({
    super.key,
    required this.controller,
  });

  final DailyActivityController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppSectionHeading(text: 'Today your Activities'),
        DateSelector(controller: controller),
        const CustomDivider(),
        ActivityProgressBar(controller: controller),
        DistanceAndStatSection(controller: controller),
      ],
    );
  }
}


