import 'package:fitness_tracking_app/pages/activity/activity.dart';
import 'package:fitness_tracking_app/pages/profile/profile.dart';
import 'package:fitness_tracking_app/pages/statistics/statistics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../core/app_colors.dart';
import '../pages/home_page/home_page.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({super.key});

  final NavbarController controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: whiteColor,
          selectedIndex: controller.currentIndex.value,
          elevation: 0.5,
          height: 70,
          onDestinationSelected: (int index) =>
              controller.currentIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.search_normal),
              label: 'SEARCH',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'WISHLIST',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'ACCOUNT',
            ),
           
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.currentIndex.value],
      ),
    );
  }
}

class NavbarController extends GetxController {
  RxInt currentIndex = 0.obs;

  final screens = [
    const HomePage(),
    const Activity(),
    const Statistics(),
    const Profile(),
    
  ];
}
