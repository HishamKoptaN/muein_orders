import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextButtonThemeData textButtonTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  return TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return colorScheme.onSurface.withOpacity(0.38);
        }
        return colorScheme.primary;
      }),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
      ),
      minimumSize: WidgetStateProperty.all(Size(100.w, 40.h)),
      textStyle: WidgetStateProperty.all(textTheme.labelLarge),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      ),
    ),
  );
}
