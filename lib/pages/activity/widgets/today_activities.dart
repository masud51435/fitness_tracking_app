import 'package:fitness_tracking_app/common/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../common/section_heading.dart';
import '../../../controllers/activity_controller.dart';
import 'activity_progressbar.dart';
import 'distance_stat_section.dart';

class TodayActivities extends StatelessWidget {
  const TodayActivities({
    super.key,
    required this.controller,
  });

  final DailyActivityController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppSectionHeading(text: 'Today your Activities'),
        DateSelector(controller: controller),
        const CustomDivider(),
        ActivityProgressBar(controller: controller),
        DistanceAndStatSection(controller: controller),
      ],
    );
  }
}

class DateSelector extends StatefulWidget {
  const DateSelector({
    super.key,
    required this.controller,
  });

  final DailyActivityController controller;

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.controller.days.length,
        itemBuilder: (context, index) {
          bool isSelected = widget.controller.isSelect(index);
          return GestureDetector(
            onTap: () {
              widget.controller.onItemTap(index);
              setState(() {});
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: isSelected ? Colors.deepOrangeAccent : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isSelected ? Colors.orange : Colors.grey.shade300,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateFormat('EEE').format(widget.controller.days[index]),
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? Colors.white : Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.controller.days[index].day.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
