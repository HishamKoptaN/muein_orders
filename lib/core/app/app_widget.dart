import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart';
import '../../features/auth/sign_in/present/bloc/sign_in_bloc.dart';
import '../../features/auth/sign_up/present/bloc/sign_up_bloc.dart';
import '../../features/language/bloc/language_bloc.dart';
import '../../features/onboarding/present/bloc/onboarding_bloc.dart';
import '../../features/orders/present/bloc/orders_bloc.dart';
import '../../features/theme/blocs/theme_bloc.dart';
import '../../l10n/app_localizations.dart';
import '../config/app_config.dart';
import '../di/dependency_injection.dart';
import '../routing/app_router.dart';

class MubinOrdersApp extends StatelessWidget {
  const MubinOrdersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnboardingBloc>(create: (_) => getIt<OnboardingBloc>()),
        BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
        BlocProvider<SignInBloc>(create: (_) => getIt<SignInBloc>()),
        BlocProvider<SignUpBloc>(create: (_) => getIt<SignUpBloc>()),
        BlocProvider<ForgotPassBloc>(create: (_) => getIt<ForgotPassBloc>()),
        BlocProvider<LanguageBloc>(create: (_) => getIt<LanguageBloc>()),
        BlocProvider<ThemeBloc>(create: (_) => getIt<ThemeBloc>()),
        BlocProvider<OrdersBloc>(create: (_) => getIt<OrdersBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          context.read<AuthBloc>().add(const AuthEvent.check());
          return BlocBuilder<LanguageBloc, LanguageState>(
            builder: (context, languageState) {
              return BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, themeState) {
                  const buttonSize = Size(332, 60);
                  const primaryBtnColor = Color(0xFF83BEA8);
                  return MaterialApp.router(
                    title: AppConfig.appName,
                    debugShowCheckedModeBanner: false,
                    routerConfig: AppRouter.create(authBloc: getIt<AuthBloc>()),
                    theme: ThemeData(
                      colorScheme: const ColorScheme(
                        brightness: Brightness.light,
                        primary: primaryBtnColor,
                        onPrimary: Colors.white,
                        secondary: primaryBtnColor,
                        onSecondary: Colors.white,
                        error: Colors.red,
                        onError: Colors.red,
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
                      orElse: () => const Locale('ar'),
                    ),
                    localizationsDelegates: _buildLocalizationDelegates(),
                    supportedLocales: AppLocalizations.supportedLocales,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  static List<LocalizationsDelegate<dynamic>> _buildLocalizationDelegates() => [
        ...AppLocalizations.localizationsDelegates,
        CountryLocalizations.delegate,
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ];
}
