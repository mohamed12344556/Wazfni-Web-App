import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';

class BuildEndDrawer extends StatelessWidget {
  const BuildEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColors.darkGray,
        child: ListView(
          children: [
            ListTile(
              iconColor: AppColors.mediumGray,
              textColor: AppColors.mediumGray,
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              iconColor: AppColors.mediumGray,
              textColor: AppColors.mediumGray,
              leading: const Icon(Icons.search),
              title: const Text('Case Studies'),
              onTap: () {},
            ),
            ListTile(
              iconColor: AppColors.mediumGray,
              textColor: AppColors.mediumGray,
              leading: const Icon(Icons.library_books),
              title: const Text('Testimonials'),
              onTap: () {},
            ),
            ListTile(
              iconColor: AppColors.mediumGray,
              textColor: AppColors.mediumGray,
              leading: const Icon(Icons.notifications),
              title: const Text('Recent work'),
              onTap: () {},
            ),
            ListTile(
              iconColor: AppColors.mediumGray,
              textColor: AppColors.mediumGray,
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Get In Touch'),
              onTap: () {},
            ),
          ],
        ),
      );
  }
}