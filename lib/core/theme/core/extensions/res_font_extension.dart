import 'package:flutter/material.dart';
import '../../../responsive/responsive_extensions.dart';

extension ResponsiveFontExtension on num {
  double rf(BuildContext context) {
    return context.responsive(
      mobile: this * 1,
      tablet: this * .4,
      desktop: this * .3,
    );
  }
}
