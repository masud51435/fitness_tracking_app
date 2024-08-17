import 'package:flutter/material.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_search_bar.dart';
import 'widgets/home_statistics/home_statistics_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            HomeSearchBar(),
            StatisticSection(),
          ],
        ),
      ),
    );
  }
}
