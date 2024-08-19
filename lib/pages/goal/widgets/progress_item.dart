import 'package:flutter/material.dart';

import '../../home_page/widgets/daily_goal/goal_class.dart';

class ProgressItem extends StatelessWidget {
  final Workout workout;

  const ProgressItem({
    super.key,
    required this.workout,
  });

  @override
  Widget build(BuildContext context) {
    double progress = workout.current / workout.total;
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: CircularProgressIndicator(
                  value: progress,
                  strokeWidth: 8.0,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.deepOrangeAccent,
                  ),
                ),
              ),
              Text(
                "${workout.current}/${workout.total}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            workout.title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            workout.timeRemaining,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
