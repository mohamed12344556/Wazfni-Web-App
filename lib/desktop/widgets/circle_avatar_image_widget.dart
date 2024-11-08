import 'package:flutter/material.dart';

class CircleAvatarImageWidget extends StatelessWidget {
   const CircleAvatarImageWidget({super.key, required this.networkImage});
 final String networkImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 33,bottom: 24),
      child: Container(
        width: 350,
        height: 350,
        child: CircleAvatar(
          backgroundImage: NetworkImage(networkImage),
        ),
      ),
    );
  }
}
