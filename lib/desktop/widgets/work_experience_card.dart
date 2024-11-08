import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wazafny_app/core/themes/app_styles.dart';

class work_experience_card extends StatefulWidget {
  final String label;
  final Color labelColor;
  final String title;
  final String description;
  final Color buttonColor;
  final String buttonText;
  final String imageUrl;

  const work_experience_card({
    super.key,
    required this.label,
    required this.labelColor,
    required this.title,
    required this.description,
    required this.buttonColor,
    required this.buttonText,
    required this.imageUrl,
  });

  @override
  State<work_experience_card> createState() => _work_experience_cardState();
}

class _work_experience_cardState extends State<work_experience_card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(widget.imageUrl,
              height: 250, width: 550, fit: BoxFit.cover),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: widget.buttonColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    widget.label,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font12WhiteSemiBold.copyWith(
                      color: widget.labelColor,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.title,
                  style: AppTextStyles.font34PureBlackExtraBold,
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(right: 206),
                  child: Text(
                    widget.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font14mediumGrayRegular,
                  ),
                ),
                const SizedBox(height: 8),
                // buttons
                TextButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.buttonColor,
                  ),
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: Text(
                    widget.buttonText,
                    style: AppTextStyles.font12WhiteSemiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
