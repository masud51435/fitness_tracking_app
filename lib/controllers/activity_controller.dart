import 'package:fitness_tracking_app/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/activity/widgets/activity_class.dart';

class DailyActivityController extends GetxController {
  RxInt currentPageIndex = 0.obs;
  final ScrollController scrollController = ScrollController();

  var totalCaloriesBurned = 1116.5.obs;
  var totalDistance = 14.8.obs;
  var totalSteps = 19124.obs;
  var totalTime = "2h 14m".obs;

  var days = <DateTime>[].obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _generateDaysOfMonth();
    _setSelectedIndex();
    scrollController.addListener(
      () {
        final pageIndex = (scrollController.offset / (Get.width / 2)).round();
        if (pageIndex != currentPageIndex.value) {
          currentPageIndex.value = pageIndex;
        }
      },
    );
  }

  void _generateDaysOfMonth() {
    DateTime now = DateTime.now();
    int daysInMonth = DateTime(now.year, now.month + 1, 0).day;
    List<DateTime> tempDays = [];
    for (int i = 0; i < daysInMonth; i++) {
      tempDays.add(DateTime(now.year, now.month, i + 1));
    }
   
    days.addAll(tempDays);
  }

  void _setSelectedIndex() {
    DateTime now = DateTime.now();
    selectedIndex.value = days.indexWhere((date) => date.day == now.day);
  }

  void onItemTap(int index) {
    selectedIndex.value = index;
    print("Selected index updated to: $selectedIndex");
  }

  bool isSelect(int index) {
    bool isSelected = selectedIndex.value == index;
    return isSelected;
  }

  RxList<DailyActivity> dailyActivities = <DailyActivity>[
    DailyActivity(
      title: "Jogging",
      percentage: 22,
      color: Colors.yellow,
      time: "Today, 08:10 AM",
      distance: 2.32,
      totalDistance: 5.00,
      unit: 'miles',
      calories: "238.2 cal",
      imagePath: "assets/icons/activity/jogging.png",
    ),
    DailyActivity(
      title: "Cycling",
      percentage: 50,
      color: Colors.blue,
      time: "Today, 08:10 AM",
      distance: 10.00,
      totalDistance: 10.00,
      unit: 'miles',
      calories: "563.4 cal",
      imagePath: "assets/icons/activity/cycling.png",
    ),
    DailyActivity(
      title: "Jumping",
      percentage: 13,
      color: redColor,
      time: "Today, 08:10 AM",
      distance: 13.32,
      totalDistance: 15.00,
      unit: 'feet',
      calories: "408.2 cal",
      imagePath: "assets/icons/activity/jumping.png",
    ),
    DailyActivity(
      title: "Running",
      percentage: 87,
      color: Colors.green,
      time: "Today, 08:10 AM",
      distance: 8.00,
      totalDistance: 8.00,
      unit: 'miles',
      calories: "354.9 cal",
      imagePath: "assets/icons/activity/running.png",
    ),
    DailyActivity(
      title: "Others",
      percentage: 15,
      color: Colors.black,
    ),
  ].obs;
}
