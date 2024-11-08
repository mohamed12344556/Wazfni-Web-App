import 'package:flutter/material.dart';
import 'package:wazafny_app/mobile/widgets/custom_elevated_button.dart';
import '../../core/themes/app_colors.dart';

class CaseStudy {
  final String category;
  final String title;
  final String description;
  final String imageUrl;

  CaseStudy({
    required this.category,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class CaseStudies extends StatelessWidget {
  const CaseStudies({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CaseStudy> caseStudies = [
      CaseStudy(
        category: 'Fintech',
        title: 'Work name here',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        imageUrl: 'assets/images/image2.png',
      ),
      CaseStudy(
        category: 'Technology',
        title: 'Work name here',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        imageUrl: 'assets/images/image2.png',
      ),
      CaseStudy(
        category: 'Healthcare',
        title: 'Work name here',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        imageUrl: 'assets/images/image2.png',
      ),
    ];

    final List<Color> categoryBackgroundColors = [
      AppColors.paleOrange,
      AppColors.softBlue,
      AppColors.lightEmeraldGreen,
    ];

    final List<Color> categoryTextColors = [
      AppColors.vibrantOrange,
      AppColors.primaryBlue,
      AppColors.emeraldGreen,
    ];

    final List<Color> buttonColors = [
      AppColors.vibrantOrange,
      AppColors.primaryBlue,
      AppColors.emeraldGreen,
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      height: MediaQuery.sizeOf(context).height * 0.85,
      child: Column(
        children: [
          Text(
            "Case Studies",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          Text(
            "We have been featured in",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: caseStudies.length,
              itemBuilder: (context, index) {
                final caseStudy = caseStudies[index];
                final isEven = index % 2 == 0;
                final bgColor = categoryBackgroundColors[
                    index % categoryBackgroundColors.length];
                final textColor =
                    categoryTextColors[index % categoryTextColors.length];
                final btnColor = buttonColors[index % buttonColors.length];

                return Container(
                  height: 300,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.mediumGray,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    children: isEven
                        ? [
                            _buildTextContent(
                                caseStudy, bgColor, textColor, btnColor),
                            _buildImageContent(caseStudy.imageUrl),
                          ]
                        : [
                            _buildImageContent(caseStudy.imageUrl),
                            _buildTextContent(
                                caseStudy, bgColor, textColor, btnColor),
                          ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextContent(
    CaseStudy caseStudy,
    Color categoryBgColor,
    Color categoryTextColor,
    Color buttonColor,
  ) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //! make it
                height: 24,
                width: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: categoryBgColor,
                ),
                alignment: Alignment.center,
                child: Text(
                  caseStudy.category,
                  style: TextStyle(
                    color: categoryTextColor,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(caseStudy.title),
              const SizedBox(height: 8),
              Text(caseStudy.description),
              const Spacer(),
              CustomElevatedButton(
                title: "View case study",
                color: buttonColor,
                isShadowActive: false,
                onPressed: () {},
                height: 48,
                width: 190,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageContent(String imageUrl) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
