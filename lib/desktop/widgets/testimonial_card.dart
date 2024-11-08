import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_styles.dart';


class TestimonialCard extends StatelessWidget {
  final String imageUrl;
  final String testimonial;
  final String clientName;

  const TestimonialCard({
    super.key,
    required this.imageUrl,
    required this.testimonial,
    required this.clientName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.darkGray),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '“',
              style: AppTextStyles.font44WhiteExtraBold,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                testimonial,
                style: AppTextStyles.font14mediumGrayRegular,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl), // Client image
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    clientName,
                    style: AppTextStyles.font18WhiteBold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
