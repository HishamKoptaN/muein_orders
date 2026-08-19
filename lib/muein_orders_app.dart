import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theme/core/themes/light_theme.dart';
import 'core/language/bloc/language_bloc.dart';
import 'core/blocs/theme_bloc.dart';
import 'core/di/dependency_injection.dart';
import 'core/localization/app_localization_setup.dart';
import 'core/routing/app_router.dart';

class MueinOrdersApp extends StatelessWidget {
  const MueinOrdersApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocBuilder<LanguageBloc, LanguageState>(
          bloc: getIt<LanguageBloc>(),
          builder: (context, languageState) {
            return BlocBuilder<ThemeBloc, ThemeState>(
              bloc: getIt<ThemeBloc>(),
              builder: (context, themeState) {
                return MaterialApp.router(
                  title: '',
                  debugShowCheckedModeBanner: false,
                  theme: lightTheme(context: context),
                  darkTheme: lightTheme(context: context),
                  themeMode: .light,
                  locale: languageState.maybeWhen(
                    loaded: (locale) {
                      return locale;
                    },
                    orElse: () {
                      return const Locale('ar');
                    },
                  ),
                  localizationsDelegates:
                      AppLocalizationSetup.localizationDelegates,
                  supportedLocales: AppLocalizationSetup.supportedLocales,
                  localeResolutionCallback:
                      AppLocalizationSetup.localeResolutionCallback,
                  routerConfig: AppRouter.router,
                );
              },
            );
          },
        );
      },
    );
  }
}
