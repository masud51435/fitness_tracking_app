import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/custom_text_field.dart';
import '../../../controllers/goal_controller.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
    required this.controller,
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
                  onPressed: () {
                    _goalBottomSheet(controller);
                  },
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

  Future<dynamic> _goalBottomSheet(GoalsController controller) {
    return Get.bottomSheet(
      backgroundColor: Colors.grey[100],
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: Get.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: <Widget>[
                const Text(
                  "Set your Goals",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Column(
                  children: [
                    CustomTextField(
                      title: 'WorkOut',
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      title: 'Calories',
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      title: 'Steps',
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: Get.back,
                      child: const Text("Close"),
                    ),
                    OutlinedButton(
                      onPressed: Get.back,
                      child: const Text("Set"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


