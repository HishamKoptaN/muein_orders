import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

FilledButtonThemeData filledButtonTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  return FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(colorScheme.primary),
      foregroundColor: WidgetStateProperty.all(colorScheme.onPrimary),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
      ),

      textStyle: WidgetStateProperty.all(textTheme.labelLarge),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      ),
    ),
  );
}
