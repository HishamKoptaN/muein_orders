import 'package:mode_theme/mode_theme.dart';
import 'core/all_imports.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'features/language/bloc/language_cubit.dart';
import 'features/orders/present/views/orders_view.dart';
import 'l10n/app_localizations.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

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
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: lightTheme.copyWith(
                  appBarTheme: AppBarTheme(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    // elevation: designTokens.cardElevation,
                    scrolledUnderElevation: 4,
                    // shadowColor: colorScheme.shadow,
                    centerTitle: true,
                    toolbarHeight: 65.h,
                    titleSpacing: 16.w,
                    // iconTheme: IconThemeData(color: colorScheme.onPrimary),
                    // actionsIconTheme: IconThemeData(
                    //   color:
                    //       designTokens.applyOpacity(colorScheme.onPrimary, 0.9),
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
                locale: locale,
                localizationsDelegates: [
                  ...AppLocalizations.localizationsDelegates,
                  CountryLocalizations.delegate,
                ],
                supportedLocales: AppLocalizations.supportedLocales,
                onGenerateRoute: onGenerateRoute,
                // initialRoute: AuthView.routeName,
                home: OrdersView(),
                // MainView(),
              );
            },
          );
        },
      ),
    );
  }
}
