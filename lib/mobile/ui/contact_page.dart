import 'package:flutter/material.dart';
import 'package:wazafny_app/core/themes/app_colors.dart';
import 'package:wazafny_app/mobile/widgets/custom_elevated_button.dart';

import '../../core/themes/app_styles.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contact Me",
                style: AppTextStyles.font34WhiteExtraBold,
                ),
              const SizedBox(height: 8.0),
               Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                textAlign: TextAlign.center,
                style: AppTextStyles.font14mediumGrayRegular,
              ),
              const SizedBox(height: 24.0),
              const CustomTextField(
                  label: "Email", hintText: "Please enter your email"),
              const SizedBox(height: 16.0),
              const CustomTextField(label: "Mobile", hintText: "Enter mobile"),
              const SizedBox(height: 16.0),
              const CustomTextField(
                label: "Message",
                hintText: "Enter your message",
                maxLines: 4,
              ),
              const SizedBox(height: 24.0),
              CustomElevatedButton(
                title: "Elevation",
                color: AppColors.lightGreen,
                isShadowActive: true,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final int maxLines;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.font18WhiteBold,
        ),
        const SizedBox(height: 8.0),
        TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: AppTextStyles.font14mediumGrayRegular,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
