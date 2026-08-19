import 'package:flutter/material.dart';

DialogTheme dialogTheme({
  required ColorScheme colorScheme,
  required TextTheme textTheme,
}) {
  return DialogTheme(
    backgroundColor: colorScheme.surface,
    elevation: 6,
    shadowColor: colorScheme.shadow,
    surfaceTintColor: colorScheme.surfaceTint,
    titleTextStyle: textTheme.titleLarge?.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.bold,
    ),
    contentTextStyle: textTheme.bodyLarge?.copyWith(
      color: colorScheme.onSurface.withOpacity(0.85),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
    clipBehavior: Clip.antiAlias,
    actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  );
}
