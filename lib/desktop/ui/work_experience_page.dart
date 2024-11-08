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
      padding: const EdgeInsets.all(16.0),
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

            const work_experience_card(
              label: 'Fintech',
              title: 'Work name here',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              buttonColor: AppColors.vibrantOrange,
              buttonText: 'View Experience',
              imageUrl: 'assets/images/fintech.svg',
              labelColor: AppColors.vibrantOrange,
            ),
            const SizedBox(height: 16),
            const work_experience_card(
              label: 'EdTech',
              title: 'Work name here',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              buttonColor: AppColors.primaryBlue,
              buttonText: 'View Experience',
              imageUrl: 'assets/images/edtech.svg',
              labelColor: AppColors.primaryBlue,
            ),
            const SizedBox(height: 16),
            const work_experience_card(
              label: 'Pharma',
              title: 'Work name here',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              buttonColor: AppColors.emeraldGreen,
              buttonText: 'View Experience',
              imageUrl: 'assets/images/pharma.svg',
              labelColor: AppColors.emeraldGreen,
            ),
          ],
        ),
      ),
    );
  }
}
