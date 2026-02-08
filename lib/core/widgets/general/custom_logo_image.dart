import 'package:flutter/material.dart';

class CustomLogoImage extends StatelessWidget {
  const CustomLogoImage({
    super.key,
    required this.width,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logos/muein_logo.png',
      width: width,
    );
  }
}
