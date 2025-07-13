import 'package:flutter/material.dart';

BottomSheetThemeData bottomSheetTheme({
  required ColorScheme colorScheme,
}) {
  return BottomSheetThemeData(
    backgroundColor: colorScheme.surface,
    modalBackgroundColor: colorScheme.surface,
    elevation: 4,
    modalElevation: 8,
    surfaceTintColor: colorScheme.surfaceTint,
    shadowColor: colorScheme.shadow,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    showDragHandle: true,
    dragHandleColor: colorScheme.outline.withOpacity(0.6),
    dragHandleSize: const Size(40, 4),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    constraints: const BoxConstraints(
      maxWidth: double.infinity,
    ),
  );
}
