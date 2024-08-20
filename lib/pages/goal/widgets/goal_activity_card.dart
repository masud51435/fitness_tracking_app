import 'package:flutter/material.dart';

class GoalActivityCard extends StatelessWidget {
  const GoalActivityCard({
    super.key,
    required this.image,
    required this.title,
    required this.target,
    required this.time,
    required this.onTap,
  });

  final String image;
  final String title;
  final int target;
  final int time;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                image,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    "$target Exercise . $time Min",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 25,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
