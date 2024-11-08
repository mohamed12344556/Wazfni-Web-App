import 'package:flutter/material.dart';
import '../../core/themes/app_colors.dart';

class BuildEndDrawer extends StatelessWidget {
  final Function(String) onSectionSelected;

  const BuildEndDrawer({super.key, required this.onSectionSelected});

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
            onTap: () => onSectionSelected('home'),
          ),
          ListTile(
            iconColor: AppColors.mediumGray,
            textColor: AppColors.mediumGray,
            leading: const Icon(Icons.search),
            title: const Text('Case Studies'),
            onTap: () => onSectionSelected('caseStudies'),
          ),
          ListTile(
            iconColor: AppColors.mediumGray,
            textColor: AppColors.mediumGray,
            leading: const Icon(Icons.library_books),
            title: const Text('Testimonials'),
            onTap: () => onSectionSelected('testimonials'),
          ),
          ListTile(
            iconColor: AppColors.mediumGray,
            textColor: AppColors.mediumGray,
            leading: const Icon(Icons.notifications),
            title: const Text('Recent work'),
            onTap: () => onSectionSelected('recentWork'),
          ),
          ListTile(
            iconColor: AppColors.mediumGray,
            textColor: AppColors.mediumGray,
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Get In Touch'),
            onTap: () => onSectionSelected('contact'),
          ),
        ],
      ),
    );
  }
}
