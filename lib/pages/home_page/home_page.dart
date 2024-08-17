import 'package:fitness_tracking_app/common/section_heading.dart';
import 'package:flutter/material.dart';
import '../../common/custom_divider.dart';
import 'widgets/daily_activity/home_activity.dart';
import 'widgets/daily_goal/daily_goal.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_search_bar.dart';
import 'widgets/home_statistics/home_statistics_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            HomeSearchBar(),
            StatisticSection(),
            CustomDivider(),
            ActivitySection(),
            CustomDivider(),
            GoalSection(),
            CustomDivider(),
          ],
        ),
      ),
    );
  }
}
