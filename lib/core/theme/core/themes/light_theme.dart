import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../extensions/theme_ext.dart';
import '../theme_components/app_bar_theme.dart';
import '../theme_components/input_decoration_theme.dart';
import '../typography/app_typography.dart';

ThemeData lightTheme({required BuildContext context}) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF003A46),
    brightness: .light,
  );
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    brightness: .light,
    primaryColor: colorScheme.primary,
    fontFamily: AppTypography.fontFamily,
    extensions: const [SkeletonizerConfigData()],
    textTheme: AppTypography.getTextTheme(context: context),
    appBarTheme: appBarTheme(colorScheme: colorScheme),
    inputDecorationTheme: inputDecorationTheme(context: context),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.resolveWith((states) {
          return AppTypography.getTextTheme(
            context: context,
          ).labelLarge?.copyWith(color: context.colorScheme.onPrimary);
        }),
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
            return colorScheme.secondaryContainer.withValues(alpha: .20);
          }
          return colorScheme.secondaryContainer;
        }),
      ),
    ),
    // iconTheme: IconThemeData(color: colorScheme.onSurface, size: 24),
    // cardColor: colorScheme.surface,
    // textSelectionTheme: TextSelectionThemeData(
    //   cursorColor: colorScheme.primary,
    //   selectionColor: context.colorScheme.primary.withValues(alpha: 0.2),
    //   selectionHandleColor: context.colorScheme.primary,
    // ),
    // textButtonTheme: TextButtonThemeData(
    //   style: ButtonStyle(
    //     textStyle: WidgetStatePropertyAll(context.textTheme.labelLarge),
    //   ),
    // ),
    // dividerTheme: DividerThemeData(
    //   color: context.colorScheme.outline,
    //   thickness: 1,
    // ),
    // bottomSheetTheme: bottomSheetTheme(colorScheme: context.colorScheme),
    // dialogTheme: dialogThemeData(
    //   colorScheme: context.colorScheme,
    //   textTheme: textTheme,
    // ),
    // checkboxTheme: checkboxTheme(colorScheme: context.colorScheme),
    // floatingActionButtonTheme: fabTheme(
    //   colorScheme: colorScheme,
    //   textTheme: textTheme,
    // ),
    // snackBarTheme: snackBarTheme(
    //   colorScheme: context.colorScheme,
    //   textTheme: textTheme,
    // ),

    // elevatedButtonTheme: elevatedButtonTheme(
    //   colorScheme: context.colorScheme,
    //   textTheme: textTheme,
    // ),
    // dropdownMenuTheme: dropdownMenuThemeData(
    //   colorScheme: context.colorScheme,
    //   textTheme: textTheme,
    // ),
    // switchTheme: switchThemeData(colorScheme: context.colorScheme),
    // canvasColor: context.colorScheme.surface,
    // primaryColorLight: context.colorScheme.primaryContainer,
    // primaryColorDark: context.colorScheme.primary,
    // dividerColor: context.colorScheme.outline,
    // shadowColor: context.colorScheme.shadow,
    // splashColor: context.colorScheme.primary.withOpacity(0.1),
    // hintColor: context.colorScheme.onSurfaceVariant,
    // hoverColor: context.colorScheme.primary.withOpacity(0.05),
    // focusColor: context.colorScheme.primary.withOpacity(0.1),
    // disabledColor: context.colorScheme.onSurface.withOpacity(0.38),
    // primaryIconTheme: IconThemeData(color: context.colorScheme.onPrimary),
    // primaryTextTheme: textTheme,
    // pageTransitionsTheme: const PageTransitionsTheme(
    //   builders: {
    //     TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    //     TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    //   },
    // ),
    // scrollbarTheme: ScrollbarThemeData(
    //   thumbColor: MaterialStateProperty.all(
    //     context.colorScheme.primary.withOpacity(0.5),
    //   ),
    //   trackColor: MaterialStateProperty.all(
    //     context.colorScheme.onSurface.withOpacity(0.1),
    //   ),
    // ),
    // visualDensity: VisualDensity.adaptivePlatformDensity,
    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    // splashFactory: InkRipple.splashFactory,
  );
}
