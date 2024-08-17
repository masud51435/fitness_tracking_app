import 'package:get/get.dart';

class StatisticsController extends GetxController {
  RxInt progress = 56.obs;
  RxDouble caloriesBurned = 1116.5.obs;
  RxInt steps = 19124.obs;
  RxInt heartRate = 88.obs;
  RxString sleep = "7h 34m".obs;
  List<double> heartRateData = [70, 75, 80, 78, 85, 88, 90, 87, 84, 82];
}
