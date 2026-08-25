import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../theme_components/app_bar_theme.dart';
import '../theme_components/bottom_sheet_theme.dart';
import '../theme_components/checkbox_theme.dart';
import '../theme_components/dialog_theme_data.dart';
import '../theme_components/fab_theme.dart';
import '../theme_components/snackbar_theme.dart';
import '../theme_components/dropdown_menu_theme_data.dart';
import '../theme_components/elevated_button_theme_data.dart';
import '../theme_components/input_decoration_theme.dart';
import '../theme_components/switch_theme_data.dart';
import '../extensions/theme_ext.dart';
import '../typography/app_typography.dart';

ThemeData lightTheme({required BuildContext context}) {
  final textTheme = AppTypography.getTextTheme(context: context);
  const colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF003A46),
    onPrimary: Colors.white,
    primaryContainer: Color(0xFF003A46),
    onPrimaryContainer: Colors.white,
    primaryFixed: Color(0xFF003A46),
    primaryFixedDim: Color(0xFF003A46),
    onPrimaryFixed: Color(0xFF003A46),
    onPrimaryFixedVariant: Color(0xFF003A46),
    secondary: Color(0xFF83BEA8),
    onSecondary: Colors.white,
    secondaryFixed: Color(0xFFFDBA74),
    secondaryFixedDim: Color(0xFFFDBA74),
    onSecondaryFixed: Color(0xFFFDBA74),
    onSecondaryFixedVariant: Color(0xFFFDBA74),
    surface: Color(0xFF0F172A),
    onSurface: Color(0xFF111827),
    surfaceBright: Color(0xFF111827),
    surfaceContainerHighest: Color(0xFF111827),
    surfaceContainerHigh: Color(0xFF111827),
    surfaceContainer: Color(0xFF111827),
    surfaceContainerLow: Color(0xFF111827),
    surfaceContainerLowest: Color(0xFFFFFFFF),
    onSurfaceVariant: Colors.white,
    outline: Colors.transparent,
    outlineVariant: Color(0xFFDCE4E5),
    error: Color(0xFFDC2626),
    onError: Colors.white,
  );
  return ThemeData(
    extensions: const [SkeletonizerConfigData()],
    useMaterial3: true,
    scaffoldBackgroundColor: colorScheme.primary,
    colorScheme: colorScheme,
    brightness: Brightness.light,
    fontFamily: AppTypography.fontFamily,
    primaryColor: colorScheme.primary,
    textTheme: AppTypography.getTextTheme(context: context),
    appBarTheme: appBarTheme(colorScheme: colorScheme),
    iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
    cardColor: colorScheme.surface,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: colorScheme.primary,
      selectionColor: context.colorScheme.primary.withValues(alpha: 0.2),
      selectionHandleColor: context.colorScheme.primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(context.textTheme.labelLarge),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          context.textTheme.labelLarge?.copyWith(color: Colors.white),
        ),
        iconAlignment: .end,
        minimumSize: .all(Size(.infinity, 50.h)),
        maximumSize: .all(Size(.infinity, 50.h)),
        fixedSize: .all(Size(.infinity, 50.h)),
        tapTargetSize: .padded,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: .circular(6.r)),
        ),
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.onSurface.withValues(alpha: .35);
          }
          if (states.contains(WidgetState.pressed)) {
            return colorScheme.secondaryFixedDim;
          }
          if (states.contains(WidgetState.hovered)) {
            return colorScheme.secondaryContainer;
          }
          return colorScheme.secondary;
        }),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return context.colorScheme.onSurface.withValues(alpha: 0.98);
          }

          return context.colorScheme.onSecondary;
        }),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: context.colorScheme.outline,
      thickness: 1,
    ),
    bottomSheetTheme: bottomSheetTheme(colorScheme: context.colorScheme),
    dialogTheme: dialogThemeData(
      colorScheme: context.colorScheme,
      textTheme: textTheme,
    ),
    checkboxTheme: checkboxTheme(colorScheme: context.colorScheme),
    floatingActionButtonTheme: fabTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    snackBarTheme: snackBarTheme(
      colorScheme: context.colorScheme,
      textTheme: textTheme,
    ),
    inputDecorationTheme: inputDecorationTheme(
      context: context,
      textTheme: textTheme,
    ),
    elevatedButtonTheme: elevatedButtonTheme(
      colorScheme: context.colorScheme,
      textTheme: textTheme,
    ),
    dropdownMenuTheme: dropdownMenuThemeData(
      colorScheme: context.colorScheme,
      textTheme: textTheme,
    ),
    switchTheme: switchThemeData(colorScheme: context.colorScheme),
    canvasColor: context.colorScheme.surface,
    primaryColorLight: context.colorScheme.primaryContainer,
    primaryColorDark: context.colorScheme.primary,
    dividerColor: context.colorScheme.outline,
    shadowColor: context.colorScheme.shadow,
    splashColor: context.colorScheme.primary.withOpacity(0.1),
    hintColor: context.colorScheme.onSurfaceVariant,
    hoverColor: context.colorScheme.primary.withOpacity(0.05),
    focusColor: context.colorScheme.primary.withOpacity(0.1),
    disabledColor: context.colorScheme.onSurface.withOpacity(0.38),
    primaryIconTheme: IconThemeData(color: context.colorScheme.onPrimary),
    primaryTextTheme: textTheme,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(
        context.colorScheme.primary.withOpacity(0.5),
      ),
      trackColor: MaterialStateProperty.all(
        context.colorScheme.onSurface.withOpacity(0.1),
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    splashFactory: InkRipple.splashFactory,
  );
}
