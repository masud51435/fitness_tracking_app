import 'package:flutter/material.dart';

import '../../../common/section_heading.dart';
import 'profile_tile.dart';

class OthersSection extends StatelessWidget {
  const OthersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppSectionHeading(text: 'Othres'),
        ProfileTile(
          leadingIcon: Icons.person_2,
          title: 'My Account',
          onTap: () {},
        ),
        ProfileTile(
          leadingIcon: Icons.notifications,
          title: 'Notification',
          onTap: () {},
        ),
        ProfileTile(
          leadingIcon: Icons.privacy_tip,
          title: 'Privacy Policy',
          onTap: () {},
        ),
        ProfileTile(
          leadingIcon: Icons.logout,
          title: 'Log Out',
          onTap: () {},
        ),
      ],
    );
  }
}
