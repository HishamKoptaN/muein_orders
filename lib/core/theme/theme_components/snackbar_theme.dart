import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SnackBarThemeData snackBarTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  return SnackBarThemeData(
    backgroundColor: colorScheme.surface,
    contentTextStyle: textTheme.bodyMedium?.copyWith(
      color: colorScheme.onSurface,
    ),
    actionTextColor: colorScheme.primary,
    disabledActionTextColor: colorScheme.onSurface.withOpacity(0.38),
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.r),
    ),
    behavior: SnackBarBehavior.floating,
    insetPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    showCloseIcon: true,
    closeIconColor: colorScheme.onSurface,
    dismissDirection: DismissDirection.horizontal,
  );
}