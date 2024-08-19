import 'package:flutter/material.dart';

import '../../../controllers/goal_controller.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key, required this.controller,
  });

  final GoalsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 15, top: 15),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.orange,
            Colors.deepOrangeAccent,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Start Strong and \nSet Your Fitness \nGoals',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Set Your Goal',
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/goal_banner.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}