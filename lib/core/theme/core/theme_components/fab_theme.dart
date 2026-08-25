import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

FloatingActionButtonThemeData fabTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  return FloatingActionButtonThemeData(
    backgroundColor: colorScheme.primary,
    foregroundColor: colorScheme.onPrimary,
    splashColor: colorScheme.primary.withValues(alpha: 0.12),
    focusColor: colorScheme.primary.withValues(alpha: 0.24),
    hoverColor: colorScheme.primary.withValues(alpha: 0.08),
    elevation: 3,
    focusElevation: 5,
    hoverElevation: 4,
    disabledElevation: 0,
    highlightElevation: 12,
    shape: RoundedRectangleBorder(borderRadius: .circular(6.r)),
    extendedIconLabelSpacing: 12.w,
    extendedPadding: .symmetric(horizontal: 20.w, vertical: 10.h),
    extendedTextStyle: textTheme.labelLarge?.copyWith(
      color: colorScheme.onPrimary,
      fontWeight: .w600,
    ),
    sizeConstraints: .tightFor(width: 56.w, height: 56.w),
  );
}
