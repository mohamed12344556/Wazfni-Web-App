import 'package:flutter/material.dart';
import 'package:wazafny_app/core/themes/app_colors.dart';
import 'package:wazafny_app/mobile/ui/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.pureBlack),
      ),
      home: const HomePage(),
    );
  }
}
