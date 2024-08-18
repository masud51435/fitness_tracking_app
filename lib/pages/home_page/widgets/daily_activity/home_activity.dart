import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../common/section_heading.dart';
import '../../../../controllers/activity_controller.dart';
import 'daily_acitivity_card.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final DailyActivityController controller =
        Get.put(DailyActivityController());
    return Column(
      children: [
        AppSectionHeading(
          text: 'Daily Activity',
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
        Obx(
          () {
            // Filter out DailActivities where the title is 'Others'
            final filterActivity = controller.dailyActivities
                .where((activity) => activity.title != "Others")
                .toList();
            return Column(
              children: [
                SizedBox(
                  height: Get.height * 0.18,
                  child: ListView.builder(
                    controller: controller.scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: filterActivity.length,
                    itemBuilder: (context, index) {
                      var activity = filterActivity[index];
                      return DailyActivityCard(
                        title: activity.title!,
                        time: activity.time!,
                        distance: activity.distance.toString(),
                        totalDistance: activity.totalDistance.toString(),
                        unit: activity.unit!,
                        calories: activity.calories!,
                        imagePath: activity.imagePath!,
                        pauseTap: () {},
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                AnimatedSmoothIndicator(
                  activeIndex: controller.currentPageIndex.value,
                  count: filterActivity.length,
                  effect: ScrollingDotsEffect(
                    activeDotColor: Colors.grey,
                    dotColor: Colors.grey.shade400,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
