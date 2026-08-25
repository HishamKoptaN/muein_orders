import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ElevatedButtonThemeData elevatedButtonTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return colorScheme.onSurface.withValues(alpha: 0.12);
        }
        return colorScheme.primary;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return colorScheme.onSurface.withValues(alpha: 0.38);
        }
        return colorScheme.onPrimary;
      }),
      shadowColor: .all(colorScheme.shadow),
      surfaceTintColor: .all(colorScheme.surfaceTint),
      elevation: .all(2),
      textStyle: .all(textTheme.labelLarge),
      padding: .all(.symmetric(vertical: 8.h, horizontal: 20.w)),
      minimumSize: .all(Size(120.w, 48.h)),
      shape: .all(RoundedRectangleBorder(borderRadius: .circular(6.r))),
      alignment: .center,
    ),
  );
}
