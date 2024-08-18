import 'package:flutter/material.dart';

class ProfileActivityItem extends StatelessWidget {
  const ProfileActivityItem({
    super.key,
    required this.icon,
    this.color,
    required this.title,
    required this.value,
    required this.unit,
    required this.time,
  });
  final IconData icon;
  final Color? color;
  final String title;
  final String value;
  final String unit;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "$value ",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: unit,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[600],
                        ))
                  ],
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
