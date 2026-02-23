import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomCircularProgress extends StatelessWidget {
  const CustomCircularProgress({super.key, this.backgroundColor, this.color});

  final Color? backgroundColor;
  final Color? color;

  @override
  Widget build(context) {
    return Center(
      child: SizedBox(
        width: 30,
        height: 30,
        child: CircularProgressIndicator(
          strokeCap: StrokeCap.round,
          strokeWidth: 3.5,
          backgroundColor:
              backgroundColor ?? AppColors.grey300.withValues(alpha: 0.2),
          color: color ?? AppColors.white,
        ),
      ),
    );
  }
}
