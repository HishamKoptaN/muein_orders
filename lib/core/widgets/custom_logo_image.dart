import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class CustomLogoImage extends StatelessWidget {
  const CustomLogoImage({
    super.key,
    required this.width,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.logos.mubinLogo.path,
      width: width,
    );
  }
}
