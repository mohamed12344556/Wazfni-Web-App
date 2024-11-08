import 'package:flutter/material.dart';
import 'package:wazafny_app/mobile/widgets/custom_elevated_button.dart';
import 'package:wazafny_app/mobile/widgets/build_profile_image_.dart';

import '../../core/themes/app_colors.dart';
import '../widgets/build_logo.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: MediaQuery.sizeOf(context).height * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BuildProfileImage(),
          const SizedBox(height: 20),
          const Expanded(
            child: Text(
              'Your Name Here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Expanded(
            child: Text(
              'Intro text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          CustomElevatedButton(
            title: "Elevation",
            color: AppColors.lightGreen,
            isShadowActive: true,
            onPressed: () {},
          ),
          const Spacer(),
          // Worked With Section
          const Text(
            'Worked with',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          // Logo Row
          const BuildLogo(),
        ],
      ),
    );
  }
}
