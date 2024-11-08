import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../widgets/circle_avatar_image_widget.dart';
import '../widgets/header_text_desktop_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColors.pureBlack,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        HeaderTextWidget(
                          boldText: 'I am Ahmed',
                          descriptionText:
                              'Intro text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                          buttonText1: 'Let\'s Start',
                          buttonText2: 'Hire Me',
                          size: size,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50,
                  ), // Add some spacing between the columns
                  const CircleAvatarImageWidget(
                    networkImage:
                        'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
