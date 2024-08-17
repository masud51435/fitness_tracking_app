import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/app_colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: TextFormField(
        onTapOutside: (event) =>
            FocusManager.instance.primaryFocus!.unfocus(),
        decoration: InputDecoration(
          prefixIcon: const Icon(Iconsax.search_normal),
          hintText: 'Search',
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          filled: true,
          fillColor: whiteColor,
        ),
      ),
    );
  }
}
