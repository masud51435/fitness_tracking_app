import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/Custom_appbar.dart';
import '../../../core/app_colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leading: const CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage(
          'assets/images/user.png',
        ),
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Hello! ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: 'Johan Smith',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "02 July 2024",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      actions: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: greyColor),
            ),
            child: Badge(
              backgroundColor: Colors.orangeAccent,
              textColor: whiteColor,
              label: const Text('2'),
              child: Icon(
                Iconsax.notification,
                color: blackColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}