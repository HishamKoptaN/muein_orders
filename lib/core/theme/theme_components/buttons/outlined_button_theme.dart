import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

OutlinedButtonThemeData outlinedButtonTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(colorScheme.primary),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(color: colorScheme.onSurface.withOpacity(0.12));
        }
        return BorderSide(color: colorScheme.primary);
      }),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
      ),
      minimumSize: WidgetStateProperty.all(Size(120.w, 48.h)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      ),
      textStyle: WidgetStateProperty.all(textTheme.labelLarge),
    ),
  );
}
