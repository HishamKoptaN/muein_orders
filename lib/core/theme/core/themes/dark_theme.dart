import 'package:flutter/material.dart';
import '../theme_components/bottom_sheet_theme.dart';
import '../theme_components/checkbox_theme.dart';
import '../theme_components/dialog_theme_data.dart';
import '../theme_components/fab_theme.dart';
import '../theme_components/snackbar_theme.dart';
import '../theme_components/app_bar_theme.dart';
import '../theme_components/dropdown_menu_theme_data.dart';
import '../theme_components/elevated_button_theme_data.dart';
import '../theme_components/input_decoration_theme.dart';
import '../theme_components/switch_theme_data.dart';
import '../typography/app_typography.dart';

ThemeData darkTheme({required BuildContext context}) {
  const colorScheme = ColorScheme.light(
    brightness: Brightness.dark,
    primary: Color(0xFF60A5FA),
    onPrimary: Color(0xFF0F172A),

    secondary: Color(0xFF),
    onSecondary: Colors.white,

    surface: Color(0xFF0F172A),
    onSurface: Color(0xFFF8FAFC),

    error: Color(0xFFF87171),
    onError: Color(0xFF450A0A),

    outline: Color(0xFF334155),
  );
  final textTheme = AppTypography.getTextTheme(context: context);
  return ThemeData(
    brightness: Brightness.dark,
    fontFamily: AppTypography.fontFamily,
    scaffoldBackgroundColor: colorScheme.surface,
    colorScheme: colorScheme,
    // textTheme: getDarkTextTheme(),
    elevatedButtonTheme: elevatedButtonTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    inputDecorationTheme: inputDecorationTheme(
      context: context,
      textTheme: textTheme,
    ),
    appBarTheme: appBarTheme(colorScheme: colorScheme),
    bottomSheetTheme: bottomSheetTheme(colorScheme: colorScheme),
    checkboxTheme: checkboxTheme(colorScheme: colorScheme),
    snackBarTheme: snackBarTheme(
      textTheme: textTheme,
      colorScheme: colorScheme,
    ),
    switchTheme: switchThemeData(colorScheme: colorScheme),
    dropdownMenuTheme: dropdownMenuThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    useMaterial3: true,
    canvasColor: colorScheme.surface,
    cardColor: colorScheme.surface,
    primaryColor: colorScheme.primary,
    dividerColor: colorScheme.outline,
    shadowColor: colorScheme.shadow,
    splashColor: colorScheme.primary.withValues(alpha: 0.12),
    hintColor: colorScheme.onSurface.withValues(alpha: 0.6),
    iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
    dialogTheme: dialogThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    floatingActionButtonTheme: fabTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    dividerTheme: DividerThemeData(color: colorScheme.outline, thickness: 1),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
