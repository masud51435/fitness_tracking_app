import 'package:get/get.dart';


class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  var weeklyTotalCaloriesBurned = 6730.5.obs;
  var weeklyTotalDistance = 50.8.obs;
  var weeklyTotalSteps = 67690.obs;

  final maxY = 2000.0;

  RxInt completedGoals = 0.obs;

  final weeklyGoals = [
    1500,
    2000,
    2000,
    1000,
    500,
    2200,
    890,
  ].obs;

  RxList<bool> goalIndicators = List.filled(7, false).obs;

  @override
  void onInit() {
    super.onInit();
    _checkGoals();
  }

  void _checkGoals() {
    int completed = 0;
    for (int i = 0; i < weeklyGoals.length; i++) {
      if (weeklyGoals[i] >= maxY) {
        goalIndicators[i] = true;
        completed++;
      }
    }
    completedGoals.value = completed;
  }
}
