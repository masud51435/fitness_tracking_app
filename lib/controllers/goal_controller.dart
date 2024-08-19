import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../pages/home_page/widgets/daily_goal/goal_class.dart';

class GoalsController extends GetxController {
  static GoalsController get instance => Get.find();

  //date time format
  String formatDateTime(DateTime dateTime,
      {String dateFormat = 'E, MMM dd', String timeFormat = 'hh:mm a'}) {
    final formatter = DateFormat('$dateFormat | $timeFormat');
    return formatter.format(dateTime);
  }

  final List<GoalClass> dailyGoals = [
    GoalClass(
      title: 'ABS & Stretch',
      description: '30 minutes of daily exercise',
      date: DateTime(2024, 4, 14, 8),
      target: 30,
      targetType: 'Min/day',
    ),
    GoalClass(
      title: 'Push Up',
      description: '50 sets per day',
      date: DateTime(2024, 4, 15, 9),
      target: 50,
      targetType: 'Sets/day',
    ),
    GoalClass(
      title: 'ABS & Stretch',
      description: '30 minutes of daily exercise',
      date: DateTime(2024, 4, 14, 8),
      target: 30,
      targetType: 'Min/day',
    ),
    GoalClass(
      title: 'Push Up',
      description: '50 sets per day',
      date: DateTime(2024, 4, 15, 9),
      target: 50,
      targetType: 'Sets/day',
    ),
  ].obs;

  final List<GoalActivity> goalActivityList = [
    GoalActivity(
      title: 'Full Body Worm Up',
      target: 20,
      time: 22,
      image: 'assets/icons/goal_activity/push_up.png',
    ),
    GoalActivity(
      title: 'Strength Exercise',
      target: 12,
      time: 14,
      image: 'assets/icons/goal_activity/strength.png',
    ),
    GoalActivity(
      title: 'Back Side Plank',
      target: 15,
      time: 18,
      image: 'assets/icons/goal_activity/plank.png',
    ),
    GoalActivity(
      title: 'Abs Workout',
      target: 16,
      time: 18,
      image: 'assets/icons/goal_activity/abs.png',
    ),
    GoalActivity(
      title: 'Torso and Trap Workout',
      target: 8,
      time: 10,
      image: 'assets/icons/goal_activity/torso.png',
    ),
    GoalActivity(
      title: 'Lower Back Exercise',
      target: 14,
      time: 18,
      image: 'assets/icons/goal_activity/lower_back.png',
    ),
  ].obs;

  final List<Workout> workoutList = [
    Workout(
      title: "Chest Workout",
      current: 5,
      total: 12,
      timeRemaining: "15 min remaining",
    ),
    Workout(
      title: "Legs Workout",
      current: 3,
      total: 20,
      timeRemaining: "23 min remaining",
    ),
    Workout(
      title: "Arms Workout",
      current: 8,
      total: 10,
      timeRemaining: "10 min remaining",
    ),
  ].obs;



// Goal Progress Bar Data
  RxString selectedTimeFrame = 'Weekly'.obs;

  // Weekly, Monthly, and Yearly data
  var weeklyData = [
    [60, 40, 80], // Monday
    [50, 60, 30], // Tuesday
    [70, 50, 60], // Wednesday
    [30, 40, 70], // Thursday
    [80, 60, 50], // Friday
    [60, 70, 40], // Saturday
    [50, 30, 60], // Sunday
  ].obs;

  var monthlyData = [
    [40, 50, 60],
    [50, 40, 70],
    [30, 60, 40],
    [70, 50, 30],
    [60, 70, 80],
    [80, 60, 70],
    [60, 30, 50],
  ].obs;

  var yearlyData = [
    [50, 60, 70],
    [70, 50, 80],
    [60, 40, 50],
    [30, 60, 40],
    [80, 70, 60],
    [50, 40, 60],
    [60, 70, 80],
  ].obs;

  RxList<List<int>> displayedData = RxList<List<int>>([]);

  @override
  void onInit() {
    super.onInit();
    // Set initial data to weekly data
    displayedData.assignAll(weeklyData);
  }

  void updateDisplayedData() {
    if (selectedTimeFrame.value == 'Weekly') {
      displayedData.assignAll(weeklyData);
    } else if (selectedTimeFrame.value == 'Monthly') {
      displayedData.assignAll(monthlyData);
    } else if (selectedTimeFrame.value == 'Yearly') {
      displayedData.assignAll(yearlyData);
    }
  }

  void changeTimeFrame(String newTimeFrame) {
    selectedTimeFrame.value = newTimeFrame;
    updateDisplayedData();
  }
}
