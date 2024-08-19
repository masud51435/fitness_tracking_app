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
  ];
}
