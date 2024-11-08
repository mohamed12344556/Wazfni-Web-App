import 'package:flutter/material.dart';
import 'package:wazafny_app/core/themes/app_colors.dart';
import 'package:wazafny_app/core/themes/app_styles.dart';

import '../widgets/work_experience_card.dart';


class WorkExperiencePage extends StatefulWidget {
  const WorkExperiencePage({super.key});

  @override
  State<WorkExperiencePage> createState() => _WorkExperiencePageState();
}

class _WorkExperiencePageState extends State<WorkExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40 ,right: 40 ,bottom: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(
              'Work Experience',
              style: AppTextStyles.font34PureBlackExtraBold,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 247),
              child: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                'Solving user & business problems since last 15+ years.\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: AppTextStyles.font14mediumGrayRegular,
              ),
            ),
            const SizedBox(height: 30),

            const WorkExperienceCard(
              label: 'Fintech',
              title: 'Work name here',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              buttonColor: AppColors.vibrantOrange,
              buttonText: 'View Experience',
              imageUrl: 'https://plus.unsplash.com/premium_photo-1667538960183-82690c60a2a5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              labelColor: AppColors.vibrantOrange,
            ),
            const SizedBox(height: 16),
            const WorkExperienceCard(
              label: 'EdTech',
              title: 'Work name here',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              buttonColor: AppColors.primaryBlue,
              buttonText: 'View Experience',
              imageUrl: 'https://plus.unsplash.com/premium_photo-1667538960183-82690c60a2a5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              labelColor: AppColors.primaryBlue,
            ),
            const SizedBox(height: 16),
            const WorkExperienceCard(
              label: 'Pharma',
              title: 'Work name here',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              buttonColor: AppColors.emeraldGreen,
              buttonText: 'View Experience',
              imageUrl: 'https://plus.unsplash.com/premium_photo-1667538960183-82690c60a2a5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              labelColor: AppColors.emeraldGreen,
            ),
          ],
        ),
      ),
    );
  }
}
