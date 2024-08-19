import 'package:fitness_tracking_app/pages/activity/activity.dart';
import 'package:fitness_tracking_app/pages/goal/goal.dart';
import 'package:fitness_tracking_app/pages/profile/profile.dart';
import 'package:fitness_tracking_app/pages/statistics/statistics.dart';
import 'package:get/get.dart';

import '../bottom_nav_bar/custom_nav_bar.dart';
import '../pages/home_page/home_page.dart';

class AppRoutes {
  static String BOTTOMAPPBAR = '/bottomAppBar';
  static String HOMEPAGE = '/homePage';
  static String ACTIVITY = '/activity';
  static String STATISTICS = '/statistics';
  static String PROFILE = '/profile';
  static String GOAL = '/goal';

  static List<GetPage> routes = [
    GetPage(
      name: BOTTOMAPPBAR,
      page: () => CustomNavBar(),
    ),
    GetPage(
      name: HOMEPAGE,
      page: () => const HomePage(),
    ),
    GetPage(
      name: ACTIVITY,
      page: () => const Activity(),
    ),
    GetPage(
      name: STATISTICS,
      page: () => const Statistics(),
    ),
    GetPage(
      name: PROFILE,
      page: () => const Profile(),
    ),
    GetPage(
      name: GOAL,
      page: () => const Goal(),
    ),
    
   
  ];
}
