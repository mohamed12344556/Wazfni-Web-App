import 'package:flutter/material.dart';
import 'package:wazafny_app/core/themes/app_colors.dart';
import 'package:wazafny_app/core/themes/app_styles.dart';

import '../widgets/recent_work_card.dart';

class RecentWorkPage extends StatelessWidget {
  const RecentWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 170),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40,),
            Center(
              child: Text(
                'Recent Work',
                style: AppTextStyles.font34PureBlackExtraBold,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 350),
              child: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                'Solving user & business problems since last 15+ years. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: AppTextStyles.font14mediumGrayRegular,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 400,
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WorkCard(
                      imageUrl: 'https://images.unsplash.com/photo-1487017159836-4e23ece2e4cf?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      title: 'Work name here',
                      description: 'Labore et dolore magna aliqua. sed do eiusmod tempor incididunt ut labore et dolore magna.',
                    ),
                    SizedBox(width: 20),
                    WorkCard(
                      imageUrl: 'https://images.unsplash.com/photo-1487017159836-4e23ece2e4cf?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      title: 'Work name here',
                      description: 'Rempor incididunt ut labore et dolore magna aliqua. sed do eiusmod tempor incididunt u.',
                    ),
                    SizedBox(width: 20),
                    WorkCard(
                      imageUrl: 'https://images.unsplash.com/photo-1487017159836-4e23ece2e4cf?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      title: 'Work name here',
                      description: 'Rempor incididunt ut labore et dolore magna aliqua. sed do eiusmod tempor incididunt u.',
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}