import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextTheme _baseTextTheme() {
  final baseTextStyle = TextStyle(fontFamily: 'Cairo');
  return TextTheme(
    displayLarge:
        baseTextStyle.copyWith(fontSize: 30.sp, fontWeight: FontWeight.bold),
    displayMedium: baseTextStyle.copyWith(fontSize: 26.sp),
    displaySmall: baseTextStyle.copyWith(fontSize: 22.sp),
    headlineLarge: baseTextStyle.copyWith(fontSize: 20.sp),
    headlineMedium: baseTextStyle.copyWith(fontSize: 18.sp),
    headlineSmall: baseTextStyle.copyWith(fontSize: 16.sp),
    titleLarge:
        baseTextStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
    titleMedium: baseTextStyle.copyWith(fontSize: 12.sp),
    titleSmall: baseTextStyle.copyWith(fontSize: 10.sp),
    bodyLarge: baseTextStyle.copyWith(fontSize: 16.sp),
    bodyMedium: baseTextStyle.copyWith(fontSize: 14.sp),
    bodySmall: baseTextStyle.copyWith(fontSize: 12.sp),
    labelLarge:
        baseTextStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
    labelMedium: baseTextStyle.copyWith(fontSize: 12.sp),
    labelSmall: baseTextStyle.copyWith(fontSize: 10.sp),
  );
}

TextTheme getLightTextTheme({required ColorScheme colorScheme}) =>
    _baseTextTheme().apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    );

TextTheme getDarkTextTheme({required ColorScheme colorScheme}) =>
    _baseTextTheme().apply(
      bodyColor: colorScheme.onSurface.withAlpha(
        (0.8 * 255).round(),
      ),
      displayColor: colorScheme.onSurface,
    );
