import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/theme_ext.dart';

InputDecorationTheme inputDecorationTheme({required BuildContext context}) {
  OutlineInputBorder buildBorder({required Color color, double? width}) {
    return OutlineInputBorder(
      borderRadius: .circular(8.r),
      borderSide: BorderSide(color: color, width: width ?? 0),
    );
  }

  return InputDecorationTheme(
    // filled: true,
    // isDense: true,
    contentPadding: .symmetric(vertical: 12.h, horizontal: 4.w),
    // alignLabelWithHint: true,
    // floatingLabelBehavior: .always,
    // floatingLabelStyle: context.textTheme.labelLarge,
    // labelStyle: context.textTheme.bodyLarge,
    // hintStyle: context.textTheme.bodyMedium?.copyWith(
    //   color: context.colorScheme.onPrimary.withValues(alpha: .7),
    // ),
    // errorStyle: context.textTheme.bodySmall,
    // border: buildBorder(color: context.colorScheme.outline),
    // enabledBorder: buildBorder(color: context.colorScheme.outline),
    // focusedBorder: buildBorder(color: context.colorScheme.primary),
    // errorBorder: buildBorder(color: context.colorScheme.error),
    // focusedErrorBorder: buildBorder(color: context.colorScheme.error),
    // disabledBorder: buildBorder(
    //   color: context.colorScheme.onSurface.withValues(alpha: 0.12),
    // ),
  );
}
