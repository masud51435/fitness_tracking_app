import 'package:fitness_tracking_app/common/custom_divider.dart';
import 'package:fitness_tracking_app/common/section_heading.dart';
import 'package:fitness_tracking_app/controllers/profile_controller.dart';
import 'package:fitness_tracking_app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/Custom_appbar.dart';
import 'widgets/others_section.dart';
import 'widgets/profile_activityitem.dart';
import 'widgets/profile_tile.dart';
import 'widgets/sleep_and_goal_section.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomDivider(
              topSpace: 10,
              thickness: 10,
            ),
            SleepAndGoalSection(controller: controller),
            const OthersSection(),
          ],
        ),
      ),
    );
  }
}


