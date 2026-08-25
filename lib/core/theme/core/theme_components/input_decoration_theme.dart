import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/theme_ext.dart';

InputDecorationTheme inputDecorationTheme({
  required BuildContext context,
  required TextTheme textTheme,
}) {
  OutlineInputBorder buildBorder({required Color color, double? width}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: color, width: width ?? 0),
    );
  }

  return InputDecorationTheme(
    filled: true,
    isDense: true,
    fillColor: context.colorScheme.surfaceContainerLowest.withValues(
      alpha: 0.19,
    ),
    contentPadding: .symmetric(vertical: 15.h, horizontal: 4.w),
    alignLabelWithHint: true,
    floatingLabelBehavior: .always,
    floatingLabelStyle: textTheme.labelLarge,
    labelStyle: textTheme.bodyLarge,
    hintStyle: textTheme.bodyMedium?.copyWith(
      color: context.colorScheme.onPrimary.withValues(alpha: .7),
    ),
    errorStyle: textTheme.bodySmall,
    border: buildBorder(color: context.colorScheme.outline),
    enabledBorder: buildBorder(color: context.colorScheme.outline),
    focusedBorder: buildBorder(color: context.colorScheme.primary),
    errorBorder: buildBorder(color: context.colorScheme.error),
    focusedErrorBorder: buildBorder(color: context.colorScheme.error),
    disabledBorder: buildBorder(
      color: context.colorScheme.onSurface.withValues(alpha: 0.12),
    ),
  );
}
