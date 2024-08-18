import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.centerTitle = false,
    this.paddingHorizontal = 20,
    this.backGroundColor = Colors.transparent,
    this.leading,
    this.showBackArrow = false,
  });

  final Widget? title;
  final List<Widget>? actions;
  final bool? centerTitle;
  final double paddingHorizontal;
  final Color backGroundColor;
  final Widget? leading;
  final bool showBackArrow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: 10,
      ),
      child: AppBar(
        backgroundColor: backGroundColor,
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? InkWell(
                onTap: () => Get.back(),
                child: const Icon(Icons.arrow_back_ios_new),
              )
            : leading,
        title: title,
        centerTitle: centerTitle,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(
        kToolbarHeight,
      );
}
