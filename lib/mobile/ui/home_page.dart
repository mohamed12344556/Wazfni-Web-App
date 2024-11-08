import 'package:flutter/material.dart';
import 'package:wazafny_app/mobile/ui/case_studies.dart';
import 'package:wazafny_app/mobile/ui/contact_page.dart';
import 'package:wazafny_app/mobile/ui/profile_page.dart';
import 'package:wazafny_app/mobile/ui/recent_work_page.dart';
import 'package:wazafny_app/mobile/ui/test_imonials_page.dart';

import '../../core/themes/app_colors.dart';

import '../widgets/build_end_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureBlack,
      appBar: AppBar(),
      endDrawer: const BuildEndDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfilePage(),
            const CaseStudies(),
            TestImonialsPage(),
            const RecentWorkPage(),
            const ContactPage(),
          ],
        ),
      ),
    );
  }
}
