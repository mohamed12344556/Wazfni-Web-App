import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final Color color;
  final bool isShadowActive;
  final void Function() onPressed;
  final double? height;
  final double? width;
  final double? fontSize;
  const CustomElevatedButton(
      {super.key,
      required this.title,
      required this.color,
      required this.isShadowActive,
      required this.onPressed,
      this.height,
      this.width,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: isShadowActive ? AppColors.lightGreen : Colors.transparent,
            blurRadius: isShadowActive ? 10 : 0,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: color,
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style:
                  TextStyle(fontSize: fontSize ?? 16, color: AppColors.white),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.white,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
