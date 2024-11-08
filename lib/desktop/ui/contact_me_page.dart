import 'package:flutter/material.dart';
import 'package:wazafny_app/core/themes/app_colors.dart';
import 'package:wazafny_app/core/themes/app_styles.dart';

class ContactMePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  ContactMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureBlack,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 500,
            padding: const EdgeInsets.all(32.0),
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact Me', style: AppTextStyles.font34WhiteExtraBold),
                  const SizedBox(height: 10),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: AppTextStyles.font14mediumGrayRegular),
                  const SizedBox(height: 24),
                  _buildTextFormField(
                    label: 'Email',
                    hintText: 'Please enter your email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  _buildTextFormField(
                    label: 'Mobile',
                    hintText: 'Enter mobile',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your mobile number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  _buildTextFormField(
                    label: 'Message',
                    hintText: 'Enter your message',
                    maxLines: 4,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your message';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.emeraldGreen, // Button color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Your Massage Sent successfully',
                                style: AppTextStyles.font12WhiteSemiBold,
                              ),
                              showCloseIcon: true,
                              behavior: SnackBarBehavior.floating,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(20, 20),
                                ),
                              ),
                              backgroundColor: AppColors.emeraldGreen,
                            ),
                          );
                        }
                      },
                      child: Text('Submit >',
                          style: AppTextStyles.font12WhiteSemiBold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField({
    required String label,
    required String hintText,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.font18WhiteBold,
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          maxLines: maxLines,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: AppTextStyles.font14mediumGrayRegular,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
