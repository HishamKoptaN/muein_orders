import 'package:flutter/material.dart';
import '../extensions/theme_ext.dart';

ThemeData authlightTheme({required BuildContext context}) {
  return context.theme.copyWith(
    scaffoldBackgroundColor: context.colorScheme.primary,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: context.colorScheme.onPrimary,
      ),
    ),
  );
}
