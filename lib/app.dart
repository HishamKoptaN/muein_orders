import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mode_theme/mode_theme.dart';
import 'core/all_imports.dart';
import 'core/go_router.dart';
import 'features/language/bloc/language_cubit.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'l10n/app_localizations.dart';

class GlobalVariable {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
}

class MubinOrdersApp extends StatelessWidget {
  const MubinOrdersApp({
    super.key,
  });
  @override
  Widget build(
    BuildContext context,
  ) {
    return ScreenUtilInit(
      designSize: Size(
        393,
        852,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (
          context,
          locale,
        ) {
          return ModeTheme(
            lightColorScheme: const ColorScheme.light(
              primary: Color.fromRGBO(
                239,
                167,
                53,
                1,
              ),
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Color.fromRGBO(
                239,
                167,
                53,
                1,
              ),
            ),
            darkColorScheme: ColorScheme.dark(
              primary: Color.fromRGBO(
                239,
                167,
                53,
                1,
              ),
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Color.fromRGBO(
                239,
                167,
                53,
                1,
              ),
            ),
            designTokens: DesignTokens(
              drawerElevation: 6,
              defaultRadius: BorderRadius.all(
                Radius.circular(
                  14,
                ),
              ),
              defaultRadiusOnlyBottom: BorderRadius.vertical(
                bottom: Radius.circular(
                  14,
                ),
              ),
              cardElevation: 14,
              cardMargin: EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 14,
              ),
              checkboxRadius: BorderRadius.all(
                Radius.circular(
                  14,
                ),
              ),
              splashRadius: 22,
              buttonMinSize: Size(
                345.w,
                60.h,
              ),
              buttonMaxSize: Size(
                345.w,
                60.h,
              ),
            ),
            baseTextStyle: TextStyle(
              fontFamily: 'Almarai',
            ),
            builder: ({
              required ThemeData lightTheme,
              required ThemeData darkTheme,
              required ThemeMode currentTheme,
            }) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: lightTheme.copyWith(
                  appBarTheme: AppBarTheme(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    // elevation: designTokens.cardElevation,
                    scrolledUnderElevation: 4,
                    // shadowColor: colorScheme.shadow,
                    centerTitle: true,
                    toolbarHeight: 70.h,
                    titleSpacing: 30.w,
                    leadingWidth: 70.w,
                    // iconTheme: IconThemeData(color: colorScheme.onPrimary),
                    // actionsIconTheme: IconThemeData(
                    //   color: designTokens.applyOpacity(colorScheme.onPrimary, 0.9),
                    // ),
                    titleTextStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    // systemOverlayStyle: SystemUiOverlayStyle.light,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: designTokens.defaultRadiusOnlyBottom,
                    // ),
                  ),
                ),
                darkTheme: darkTheme,
                themeMode: ThemeMode.light,
                localizationsDelegates: [
                  ...AppLocalizations.localizationsDelegates,
                  CountryLocalizations.delegate,
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: AppLocalizations.supportedLocales,
                routerConfig: router,
              );
            },
          );
        },
      ),
    );
  }
}
