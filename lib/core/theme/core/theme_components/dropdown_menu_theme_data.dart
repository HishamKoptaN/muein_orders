import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

DropdownMenuThemeData dropdownMenuThemeData({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
  InputDecorationTheme? decorationTheme,
}) {
  return DropdownMenuThemeData(
    textStyle: textTheme.bodyLarge?.copyWith(
      color: colorScheme.onSurface,
    ),
    inputDecorationTheme: decorationTheme ??
        InputDecorationTheme(
          filled: true,
          fillColor: colorScheme.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: colorScheme.outline),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: colorScheme.outline),
          ),
        ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(colorScheme.surface),
      elevation: WidgetStateProperty.all(4),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      ),
    ),
  );
}
