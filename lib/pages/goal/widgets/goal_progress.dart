import 'package:flutter/material.dart';

import '../../../common/section_heading.dart';
import '../../../controllers/goal_controller.dart';

class GoalProgress extends StatelessWidget {
  const GoalProgress({
    super.key,
    required this.controller,
  });

  final GoalsController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionHeading(
          text: 'Progress',
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
      ],
    );
  }
}