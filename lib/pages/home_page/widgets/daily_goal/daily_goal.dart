import 'package:fitness_tracking_app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/section_heading.dart';
import '../../../../controllers/goal_controller.dart';

class GoalSection extends StatelessWidget {
  const GoalSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GoalsController controller = Get.put(GoalsController());

    return Column(
      children: [
        AppSectionHeading(
          text: 'Goals',
          anotherItem: InkWell(
            onTap: () => Get.toNamed('/goal'),
            child: const Row(
              children: [
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ),
        Obx(() {
          return ListView.builder(
            itemCount: controller.dailyGoals.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final goal = controller.dailyGoals[index];
              return Card(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                elevation: 5,
                shadowColor: greyColor.withOpacity(0.1),
                child: ListTile(
                  onTap: () {},
                  tileColor: Colors.white,
                  title: Text(
                    goal.title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    controller.formatDateTime(goal.date),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[500],
                    ),
                  ),
                  trailing: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${goal.target} ${goal.targetType}',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              );
            },
          );
        }),
      ],
    );
  }
}
