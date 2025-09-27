import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomCircularProgress extends StatelessWidget {
  const CustomCircularProgress({
    super.key,
    this.backgroundColor,
    this.color,
  });

  final Color? backgroundColor;
  final Color? color;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(
          backgroundColor: backgroundColor ?? AppColors.grey300,
          color: color ?? AppColors.primary,
        ),
      ),
    );
  }
}
