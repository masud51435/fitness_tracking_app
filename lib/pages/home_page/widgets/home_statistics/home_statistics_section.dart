import 'package:fitness_tracking_app/controllers/statistics_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/section_heading.dart';
import 'statistics_all_items.dart';
import 'statistics_progress_indicator.dart';

class StatisticSection extends StatelessWidget {
  const StatisticSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final StatisticsController controller = Get.put(StatisticsController());
    return Column(
      children: [
        AppSectionHeading(
          text: 'Your Statistics',
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StatisticsProgressIndicator(controller: controller),
              const SizedBox(height: 16),
              StatisticsAllItems(controller: controller),
            ],
          ),
        ),
      ],
    );
  }
}
