import 'package:flutter/material.dart';
import 'package:wazafny_app/core/themes/app_colors.dart';

class TestImonialsPage extends StatelessWidget {
  TestImonialsPage({super.key});

  final List images = [
    'assets/images/client1.png',
    'assets/images/client2.png',
    'assets/images/client3.png',
    'assets/images/client4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.95,
      decoration: const BoxDecoration(
        color: AppColors.pureBlack,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Testimonials',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.builder(
                clipBehavior: Clip.none,
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return TestimonialCard(
                    imageUrl: images[index],
                    clientName: 'Client Name',
                    testimonialText:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String imageUrl;
  final String clientName;
  final String testimonialText;

  const TestimonialCard({
    super.key,
    required this.imageUrl,
    required this.clientName,
    required this.testimonialText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            gradient: LinearGradient(
              colors: [
                AppColors.darkGray,
                AppColors.darkGrayBlack.withOpacity(0),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.pureBlack,
                borderRadius: BorderRadius.circular(6),
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    testimonialText,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(imageUrl),
                        radius: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        clientName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const Positioned(
          top: -20,
          left: 10,
          child: Icon(
            Icons.format_quote_sharp,
            size: 40,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
