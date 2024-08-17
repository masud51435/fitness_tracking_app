import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/home_page/widgets/daily_activity/activity_class.dart';

class DailyActivityController extends GetxController {
  RxInt currentPageIndex = 0.obs;
  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    scrollController.addListener(
      () {
        final pageIndex = (scrollController.offset / (Get.width / 2)).round();
        if (pageIndex != currentPageIndex.value) {
          currentPageIndex.value = pageIndex;
        }
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

  var dailyActivities = <DailyActivity>[
    DailyActivity(
      title: "Jogging",
      time: "Today, 08:10 AM",
      distance: "2.32",
      totalDistance: "5.00 miles",
      calories: "238.2 cal",
      imagePath:
          "assets/icons/activity/jogging.png", 
    ),
    DailyActivity(
      title: "Cycling",
      time: "Today, 08:10 AM",
      distance: "10.00",
      totalDistance: "10.00 miles",
      calories: "563.4 cal",
      imagePath:
          "assets/icons/activity/cycling.png", 
    ),
    DailyActivity(
      title: "Jumping",
      time: "Today, 08:10 AM",
      distance: "13.32",
      totalDistance: "15.00 ft",
      calories: "408.2 cal",
      imagePath:
          "assets/icons/activity/jumping.png", 
    ),
    DailyActivity(
      title: "Running",
      time: "Today, 08:10 AM",
      distance: "6.46",
      totalDistance: "8.00 miles",
      calories: "354.9 cal",
      imagePath:
          "assets/icons/activity/running.png", 
    ),
  ].obs;
}
