import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_styles.dart';


class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size, required this.boldText, required this.descriptionText, required this.buttonText1, required this.buttonText2});
  final String boldText;
  final String descriptionText;
  final String buttonText1;
  final String buttonText2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80, top: 20),
      child: Container(
        width: 538,
        height: 247,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              boldText,
              style: AppTextStyles.font44WhiteExtraBold,
            ),
            const SizedBox(height: 10),
            Text(
              descriptionText,
              style: AppTextStyles.font14mediumGrayRegular,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.darkGreen,
                  ),
                  child: TextButton(
                    onPressed: () {
                      // still unknown
                    },
                    child: Text(
                      buttonText1,
                      style: AppTextStyles.font14WhiteBold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.darkGreen,
                  ),

                  child: TextButton(  // 'Hire Me'
                    onPressed: () {
                      // navigate to 3 tabs
                    },
                    child: Text(
                      buttonText2,
                      style: AppTextStyles.font14WhiteBold,
                    ),
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
