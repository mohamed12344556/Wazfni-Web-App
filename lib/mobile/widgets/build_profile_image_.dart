import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';

class BuildProfileImage extends StatelessWidget {
  const BuildProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: AppColors.darkGray,
      child: Image.asset(
        'assets/images/elastic.png',
      ),
    );
  }
}
