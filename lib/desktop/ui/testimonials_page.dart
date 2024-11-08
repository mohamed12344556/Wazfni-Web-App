import 'package:flutter/material.dart';
import 'package:wazafny_app/core/themes/app_colors.dart';
import 'package:wazafny_app/core/themes/app_styles.dart';

import '../widgets/testimonial_card.dart';


class TestimonialsPage extends StatelessWidget {
  const TestimonialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.pureBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 90),
          Text('Testimonials', style: AppTextStyles.font34WhiteExtraBold),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 400),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: AppTextStyles.font14mediumGrayRegular,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    children: const [
                      TestimonialCard(
                        imageUrl: 'https://via.placeholder.com/150',
                        testimonial: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        clientName: 'Client Name',
                      ),
                      TestimonialCard(
                        imageUrl: 'https://via.placeholder.com/150',
                        testimonial: 'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        clientName: 'Client Name',
                      ),
                      TestimonialCard(
                        imageUrl: 'https://via.placeholder.com/150',
                        testimonial: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        clientName: 'Client Name',
                      ),
                      TestimonialCard(
                        imageUrl: 'https://via.placeholder.com/150',
                        testimonial: 'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        clientName: 'Client Name',
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: const [
                      TestimonialCard(
                        imageUrl: 'https://via.placeholder.com/150',
                        testimonial: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        clientName: 'Client Name',
                      ),
                      TestimonialCard(
                        imageUrl: 'https://via.placeholder.com/150',
                        testimonial: 'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        clientName: 'Client Name',
                      ),
                      TestimonialCard(
                        imageUrl: 'https://via.placeholder.com/150',
                        testimonial: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        clientName: 'Client Name',
                      ),
                      TestimonialCard(
                        imageUrl: 'https://via.placeholder.com/150',
                        testimonial: 'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        clientName: 'Client Name',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
