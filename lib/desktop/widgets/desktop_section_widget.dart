import 'package:flutter/cupertino.dart';

class Section extends StatelessWidget {
  final double height;
  final Widget? child;
  const Section({
    super.key,
    required this.height,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Center(
        child: child,
      ),
    );
  }
}