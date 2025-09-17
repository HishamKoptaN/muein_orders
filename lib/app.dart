import 'package:country_picker/country_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/all_imports.dart';
import 'core/config/app_config.dart';
import 'core/go_router.dart';
import 'features/language/bloc/language_bloc.dart';
import 'features/theme/blocs/theme_bloc.dart';
import 'l10n/app_localizations.dart';

class GlobalVariable {
  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
}

class MubinOrdersApp extends StatelessWidget {
  const MubinOrdersApp({super.key});
  @override
  Widget build(BuildContext context) => ScreenUtilInit(
    designSize: const Size(393, 852),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) => BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, languageState) => BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          const buttonSize = Size(332, 60);
          const primaryBtnColor = Color(0xFF83BEA8);
          return MaterialApp.router(
            title: AppConfig.appName,
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            theme: ThemeData(
              colorScheme: const ColorScheme(
                brightness: Brightness.light,
                primary: primaryBtnColor,
                onPrimary: Colors.white,
                secondary: primaryBtnColor,
                onSecondary: Colors.white,
                error: Colors.red,
                onError: Colors.red,
                background: Colors.white,
                onBackground: Colors.black,
                surface: Colors.white,
                onSurface: Colors.black,
                shadow: Colors.black,
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  minimumSize: buttonSize,
                  fixedSize: buttonSize,
                  backgroundColor: primaryBtnColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),
            darkTheme: ThemeData(
              colorScheme: const ColorScheme(
                brightness: Brightness.dark,
                primary: primaryBtnColor,
                onPrimary: Colors.white,
                secondary: primaryBtnColor,
                onSecondary: Colors.white,
                error: Colors.red,
                onError: Colors.red,
                background: Colors.black,
                onBackground: Colors.white,
                surface: Colors.black,
                onSurface: Colors.white,
                shadow: Colors.white,
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  minimumSize: buttonSize,
                  fixedSize: buttonSize,
                  backgroundColor: primaryBtnColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),
            themeMode: themeState.maybeWhen(
              loaded: (themeMode) => themeMode,
              orElse: () => ThemeMode.system,
            ),
            locale: languageState.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => null,
            ),
            localizationsDelegates: _buildLocalizationDelegates(),
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    ),
  );

  static List<LocalizationsDelegate<dynamic>> _buildLocalizationDelegates() => [
    ...AppLocalizations.localizationsDelegates,
    CountryLocalizations.delegate,
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}
