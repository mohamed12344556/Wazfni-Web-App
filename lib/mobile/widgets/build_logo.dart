import 'package:flutter/material.dart';

class BuildLogo extends StatelessWidget {
  const BuildLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLogo(
            'assets/images/clickup.png',
          ), // Replace with logo paths
          _buildLogo(
            'assets/images/dropbox.png',
          ),
          _buildLogo(
            'assets/images/elastic.png',
          ),
          _buildLogo(
            'assets/images/paychex.png',
          ),
          _buildLogo(
            'assets/images/stripe.jpg',
          ),
        ],
      ),
    );
  }
}

Widget _buildLogo(String assetPath) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Image.asset(
      assetPath,
      fit: BoxFit.contain,
    ),
  );
}
