import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

FloatingActionButtonThemeData fabTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  return FloatingActionButtonThemeData(
    backgroundColor: colorScheme.primary,
    foregroundColor: colorScheme.onPrimary,
    splashColor: colorScheme.primary.withOpacity(0.12),
    focusColor: colorScheme.primary.withOpacity(0.24),
    hoverColor: colorScheme.primary.withOpacity(0.08),
    elevation: 6,
    focusElevation: 8,
    hoverElevation: 10,
    disabledElevation: 0,
    highlightElevation: 12,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.r),
    ),
    extendedIconLabelSpacing: 12.w,
    extendedPadding: EdgeInsets.symmetric(horizontal: 20.w),
    extendedTextStyle: textTheme.labelLarge?.copyWith(
      color: colorScheme.onPrimary,
      fontWeight: FontWeight.w600,
    ),
    sizeConstraints: BoxConstraints.tightFor(
      width: 56.w,
      height: 56.w,
    ),
  );
}
