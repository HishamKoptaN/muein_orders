import 'package:flutter/material.dart';

import '../container_styles.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final Color? color;

  const CustomContainer({super.key, required this.child, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: height,
        decoration: AppContainerStyles.defaultContainer(color: color),
        child: child,
      ),
    );
  }
}
