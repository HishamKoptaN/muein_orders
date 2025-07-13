import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecorationTheme inputDecorationTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  OutlineInputBorder buildBorder(Color color, {double width = 1.0}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: color, width: width),
      );
  return InputDecorationTheme(
    filled: true,
    isDense: true,
    fillColor: colorScheme.surface,
    contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    floatingLabelStyle: textTheme.labelLarge?.copyWith(
      color: colorScheme.primary,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    labelStyle: textTheme.bodyLarge?.copyWith(
      color: colorScheme.onSurface,
    ),
    hintStyle: textTheme.bodySmall?.copyWith(
      color: colorScheme.onSurfaceVariant,
    ),
    errorStyle: textTheme.bodySmall?.copyWith(color: colorScheme.error),
    border: buildBorder(colorScheme.outline),
    enabledBorder: buildBorder(colorScheme.outline),
    focusedBorder: buildBorder(colorScheme.primary, width: 1.5),
    errorBorder: buildBorder(colorScheme.error),
    focusedErrorBorder: buildBorder(colorScheme.error, width: 1.5),
    disabledBorder: buildBorder(colorScheme.onSurface),
  );
}
