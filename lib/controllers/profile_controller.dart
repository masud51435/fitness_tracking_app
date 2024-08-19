import 'package:get/get.dart';

import '../pages/profile/widgets/goal_data_class.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  var weeklyTotalCaloriesBurned = 6730.5.obs;
  var weeklyTotalDistance = 50.8.obs;
  var weeklyTotalSteps = 67690.obs;

  final List<GoalData> goalData = [
    GoalData(day: 'Mon', value: 2),
    GoalData(day: 'Tue', value: 5),
    GoalData(day: 'Wed', value: 3),
    GoalData(day: 'Thu', value: 4),
    GoalData(day: 'Fri', value: 6),
    GoalData(day: 'Sat', value: 2),
    GoalData(day: 'Sun', value: 1),
  ];

  int get totalGoals => goalData.length;
  int get completedGoals => goalData.where((data) => data.value > 0).length;
}
