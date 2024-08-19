class GoalClass {
  final String title;
  final String description;
  final DateTime date;
  final int target;
  final String targetType;

  GoalClass({
    required this.title,
    required this.description,
    required this.date,
    required this.target,
    required this.targetType,
  });
}

class GoalActivity {
  GoalActivity({
    required this.title,
    required this.target,
    required this.time,
    required this.image,
  });
  final String title;
  final int target;
  final int time;
  final String image;
}
