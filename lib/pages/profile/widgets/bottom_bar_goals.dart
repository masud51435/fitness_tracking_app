import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/profile_controller.dart';

class ProgressGoals extends StatelessWidget {
  const ProgressGoals({
    super.key,
    required this.controller,
  });

  final ProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'You\'ve completed',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                ),
              ),
              TextSpan(
                text: ' ${controller.completedGoals.value}',
                style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' out of ',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[600],
            ),
          ),
          const TextSpan(
            text: ' 7',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' daily goals',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    ),
    );
  }
}