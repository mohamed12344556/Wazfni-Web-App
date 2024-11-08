import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_styles.dart';
import '../widgets/desktop_section_widget.dart';
import 'contact_me_page.dart';
import 'home_page.dart';
import 'recent_work_page.dart';
import 'testimonials_page.dart';
import 'work_experience_page.dart';

class DesktopLayoutPage extends StatefulWidget {
  const DesktopLayoutPage({super.key});

  @override
  State<DesktopLayoutPage> createState() => _DesktopLayoutPageState();
}

class _DesktopLayoutPageState extends State<DesktopLayoutPage> {

  final GlobalKey _appBarKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _workExperienceKey = GlobalKey();
  final GlobalKey _testimonialsKey = GlobalKey();
  final GlobalKey _recentWorkKey = GlobalKey();
  final GlobalKey _contactMeKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkGrayBlack,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 280),
              child: TextButton(
                onPressed: () {
                  _scrollToSection(_homeKey);
                },
                child: Text(
                  'home',
                  style: AppTextStyles.font14mediumGrayRegular,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                onPressed: () {
                  _scrollToSection(_workExperienceKey);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Work Experience',
                    style: AppTextStyles.font14mediumGrayRegular,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                onPressed: () {
                  _scrollToSection(_testimonialsKey);
                },
                child: Text(
                  'Testimonials',
                  style: AppTextStyles.font14mediumGrayRegular,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                onPressed: () {
                  _scrollToSection(_recentWorkKey);
                },
                child: Text(
                  'Recent Work',
                  style: AppTextStyles.font14mediumGrayRegular,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: TextButton(
                onPressed: () {
                  _scrollToSection(_contactMeKey);
                },
                child: Text(
                  'Contact Me',
                  style: AppTextStyles.font14mediumGrayRegular,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Section(
              key: _homeKey,
              height: 700,
              child: HomePage(),
            ),
            Section(
              key: _workExperienceKey,
              height: 1000,
              child: WorkExperiencePage(),
            ),
            Section(
              key: _testimonialsKey,
              height: 750,
              child: const TestimonialsPage(),
            ),
            Section(
              key: _recentWorkKey,
              height: 700,
              child: RecentWorkPage(),
            ),
            Section(
              key: _contactMeKey,
              height: 701,
              child: ContactMePage(),
            ),
          ],
        ),
      ),
    );
  }
}
