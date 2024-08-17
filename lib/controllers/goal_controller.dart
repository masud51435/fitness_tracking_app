import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../pages/home_page/widgets/daily_goal/goal_class.dart';

class GoalsController extends GetxController {
  //date time format
  String formatDateTime(DateTime dateTime,
      {String dateFormat = 'E, MMM dd', String timeFormat = 'hh:mm a'}) {
    final formatter = DateFormat('$dateFormat | $timeFormat');
    return formatter.format(dateTime);
  }

  final List<Goal> goals = [
    Goal(
      title: 'ABS & Stretch',
      description: '30 minutes of daily exercise',
      date: DateTime(2024, 4, 14, 8),
      target: 30,
      targetType: 'Min/day',
    ),
    Goal(
      title: 'Push Up',
      description: '50 sets per day',
      date: DateTime(2024, 4, 15, 9),
      target: 50,
      targetType: 'Sets/day',
    ),
    Goal(
      title: 'ABS & Stretch',
      description: '30 minutes of daily exercise',
      date: DateTime(2024, 4, 14, 8),
      target: 30,
      targetType: 'Min/day',
    ),
    Goal(
      title: 'Push Up',
      description: '50 sets per day',
      date: DateTime(2024, 4, 15, 9),
      target: 50,
      targetType: 'Sets/day',
    ),
  ].obs;

  // Add methods for adding, editing, deleting goals
}
