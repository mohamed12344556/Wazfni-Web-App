import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Container(
        width: 445,
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
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                testimonial,
                style: AppTextStyles.font14mediumGrayRegular,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: imageUrl.endsWith('.svg')
                        ? SvgPicture.network(
                      imageUrl,
                      height: 50, // Adjust size as needed
                      width: 50,
                      fit: BoxFit.cover,
                    )
                        : Image.network(
                      imageUrl,
                      height: 50, // Adjust size as needed
                      width: 50,
                      fit: BoxFit.fitWidth,
                    ),
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
