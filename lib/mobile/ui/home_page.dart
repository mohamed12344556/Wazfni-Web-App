import 'package:flutter/material.dart';
import 'package:wazafny_app/mobile/ui/case_studies.dart';
import 'package:wazafny_app/mobile/ui/contact_page.dart';
import 'package:wazafny_app/mobile/ui/profile_page.dart';
import 'package:wazafny_app/mobile/ui/recent_work_page.dart';
import 'package:wazafny_app/mobile/ui/test_imonials_page.dart';
import '../../core/themes/app_colors.dart';
import '../widgets/build_end_drawer.dart';

class MobileLayoutPage extends StatefulWidget {
  const MobileLayoutPage({super.key});

  @override
  State<MobileLayoutPage> createState() => _MobileLayoutPageState();
}

class _MobileLayoutPageState extends State<MobileLayoutPage> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _caseStudiesKey = GlobalKey();
  final GlobalKey _testimonialsKey = GlobalKey();
  final GlobalKey _recentWorkKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureBlack,
      appBar: AppBar(),
      endDrawer: BuildEndDrawer(
        onSectionSelected: (section) {
          switch (section) {
            case 'home':
              scrollToSection(_homeKey);
              break;
            case 'caseStudies':
              scrollToSection(_caseStudiesKey);
              break;
            case 'testimonials':
              scrollToSection(_testimonialsKey);
              break;
            case 'recentWork':
              scrollToSection(_recentWorkKey);
              break;
            case 'contact':
              scrollToSection(_contactKey);
              break;
          }
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              key: _homeKey,
              child: const ProfilePage(),
            ),
            Container(
              key: _caseStudiesKey,
              child: const CaseStudies(),
            ),
            Container(
              key: _testimonialsKey,
              child: TestImonialsPage(),
            ),
            Container(
              key: _recentWorkKey,
              child: const RecentWorkPage(),
            ),
            Container(
              key: _contactKey,
              child: const ContactPage(),
            ),
          ],
        ),
      ),
    );
  }
}
