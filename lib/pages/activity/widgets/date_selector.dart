import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../controllers/activity_controller.dart';

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
      child: Obx(
        () => ListView.builder(
          controller: widget.controller.scrollController,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                        fontSize: 18,
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
      ),
    );
  }
}
