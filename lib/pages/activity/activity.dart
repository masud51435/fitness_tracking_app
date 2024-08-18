import 'package:fitness_tracking_app/common/Custom_appbar.dart';
import 'package:fitness_tracking_app/common/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../controllers/activity_controller.dart';
import 'widgets/activities_all_cards.dart';
import 'widgets/today_activities.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    final DailyActivityController controller =
        Get.put(DailyActivityController());
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text(
          'Daily Activity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Iconsax.notification),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDivider(topSpace: 10),
            TodayActivities(controller: controller),
            const CustomDivider(),
            ActivitiesSection(controller: controller),
          ],
        ),
      ),
    );
  }
}


