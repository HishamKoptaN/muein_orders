import 'package:flutter/material.dart';
import '../../theme_components/bottom_sheet_theme.dart';
import '../../theme_components/buttons/elevated_button_theme_data.dart';
import '../../theme_components/checkbox_theme.dart';
import '../../theme_components/dialog_theme_data.dart';
import '../../theme_components/fab_theme.dart';
import '../../theme_components/snackbar_theme.dart';
import '../text_theme.dart';
import '../../theme_components/app_bar_theme.dart';
import '../../theme_components/dropdown_menu_theme_data.dart';
import '../../theme_components/input_decoration_theme.dart';
import '../../theme_components/switch_theme_data.dart';

ThemeData lightTheme() {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.amber,
    brightness: Brightness.light,
    // //اللون الأساسي للتطبيق (مثل أزرار، شريط التطبيقات)
    // primary: LightColors.primary,
    // // اللون المستخدم فوق اللون primary (مثل النص داخل زر)
    // onPrimary: LightColors.onPrimary,
    // // خلفيات ثانوية مرتبطة بـ primary (بطاقات، حاويات)
    // primaryContainer: LightColors.primaryContainer,
    // // النص أو الأيقونات التي تظهر فوق primaryContainer
    // onPrimaryContainer: LightColors.onPrimaryContainer,
    // // اللون الثانوي (مساعد لـ primary)
    // secondary: LightColors.secondary,
    // // اللون الذي يظهر فوق secondary (نص أو أيقونات)
    // onSecondary: Colors.white,
    // error: LightColors.error,
    // onError: Colors.white,
    // // سطح عام (بطاقات، خلفيات نوافذ، dialogs)
    // surface: LightColors.surface,
    // // النص أو الأيقونات فوق surface
    // onSurface: LightColors.onSurface,
    // outline: LightColors.outline,
  );
  final textTheme = getLightTextTheme(colorScheme: colorScheme);
  return ThemeData(
    colorScheme: colorScheme,
    brightness: Brightness.light,
    fontFamily: 'Cairo',
    useMaterial3: true,
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.surface,
    cardColor: colorScheme.surface,
    iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
    textTheme: textTheme,
    appBarTheme: appBarTheme(colorScheme: colorScheme),
    drawerTheme: DrawerThemeData(
      backgroundColor: colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(24)),
      ),
    ),
    dividerTheme: DividerThemeData(color: colorScheme.outline, thickness: 1),
    bottomSheetTheme: bottomSheetTheme(colorScheme: colorScheme),
    dialogTheme:
        dialogThemeData(colorScheme: colorScheme, textTheme: textTheme),
    checkboxTheme: checkboxTheme(
      colorScheme: colorScheme,
    ),
    cardTheme: CardThemeData(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    floatingActionButtonTheme: fabTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    snackBarTheme:
        snackBarTheme(colorScheme: colorScheme, textTheme: textTheme),
    inputDecorationTheme: inputDecorationTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    // ! Buttons
    elevatedButtonTheme: elevatedButtonTheme(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    dropdownMenuTheme: dropdownMenuThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
    switchTheme: switchThemeData(
      colorScheme: colorScheme,
    ),
    // ! Colors
    canvasColor: colorScheme.surface,
    primaryColorLight: colorScheme.primaryContainer,
    primaryColorDark: colorScheme.primary,
    dividerColor: colorScheme.outline,
    shadowColor: colorScheme.shadow,
    splashColor: colorScheme.primary,
    hintColor: colorScheme.onSurfaceVariant,
    hoverColor: colorScheme.primary,
    focusColor: colorScheme.primary,
    disabledColor: colorScheme.onSurface,
    primaryIconTheme: IconThemeData(color: colorScheme.onPrimary),
    primaryTextTheme: textTheme,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: WidgetStateProperty.all(colorScheme.primary),
      trackColor: WidgetStateProperty.all(colorScheme.onSurface),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    splashFactory: InkRipple.splashFactory,
  );
}
