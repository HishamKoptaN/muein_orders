import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart';
import '../../features/auth/sign_in/present/bloc/sign_in_bloc.dart';
import '../../features/auth/sign_up/present/bloc/sign_up_bloc.dart';
import '../../features/docs/present/blocs/cached_doc/cached_doc_bloc.dart';
import '../../features/docs/present/blocs/docs_bloc/docs_bloc.dart';
import '../../features/home/present/bloc/home_bloc.dart';
import '../../features/language/bloc/language_bloc.dart';
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
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.check()),
        ),
        BlocProvider<SignInBloc>(create: (_) => getIt<SignInBloc>()),
        BlocProvider<SignUpBloc>(create: (_) => getIt<SignUpBloc>()),
        BlocProvider<ForgotPassBloc>(create: (_) => getIt<ForgotPassBloc>()),
        BlocProvider<LanguageBloc>(create: (_) => getIt<LanguageBloc>()),
        BlocProvider<ThemeBloc>(create: (_) => getIt<ThemeBloc>()),
        BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
        BlocProvider<OrdersBloc>(create: (_) => getIt<OrdersBloc>()),
        BlocProvider<DocsBloc>(create: (_) => getIt<DocsBloc>()),
        BlocProvider<CachedDocBloc>(create: (_) => getIt<CachedDocBloc>()),
        // BlocProvider<UploadTaskBloc>(create: (_) => getIt<UploadTaskBloc>()),
        // BlocProvider<UploadProgressTrackingBloc>(
        //   create: (_) => getIt<UploadProgressTrackingBloc>(),
        // ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocBuilder<LanguageBloc, LanguageState>(
            builder: (context, languageState) {
              return BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, themeState) {
                  const buttonSize = Size(332, 60);
                  const primaryBtnColor = Color(0xFF83BEA8);
                  return BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, authState) {
                      authState.maybeWhen(
                        loading: () {},
                        orElse: () {
                          FlutterNativeSplash.remove();
                        },
                      );
                    },
                    builder: (context, authState) {
                      return authState.maybeWhen(
                        loading: () {
                          return const SizedBox.shrink();
                        },
                        orElse: () {
                          return MaterialApp.router(
                            title: AppConfig.appName,
                            debugShowCheckedModeBanner: false,
                            theme: _lightTheme(buttonSize, primaryBtnColor),
                            darkTheme: _darkTheme(buttonSize, primaryBtnColor),
                            themeMode: themeState.maybeWhen(
                              loaded: (themeMode) => themeMode,
                              orElse: () => ThemeMode.system,
                            ),
                            locale: const Locale('ar'),
                            //   languageState.maybeWhen(
                            // loaded: (locale) => locale,
                            // orElse: () => const Locale('ar'),
                            // ),
                            localizationsDelegates:
                                _buildLocalizationDelegates(),
                            supportedLocales: getSupportedLocales(),
                            localeResolutionCallback:
                                (locale, supportedLocales) {
                              if (locale != null) {
                                for (final supportedLocale
                                    in supportedLocales) {
                                  if (supportedLocale.languageCode ==
                                      locale.languageCode) {
                                    return supportedLocale;
                                  }
                                }
                              }
                              return const Locale('en');
                            },
                            routerConfig: AppRouter.create(
                              authBloc: context.read<AuthBloc>(),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  static ThemeData _lightTheme(Size buttonSize, Color primaryBtnColor) =>
      ThemeData(
        colorScheme: ColorScheme.light(
          primary: primaryBtnColor,
          onPrimary: Colors.white,
          secondary: primaryBtnColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
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
      );

  static ThemeData _darkTheme(Size buttonSize, Color primaryBtnColor) =>
      ThemeData(
        colorScheme: ColorScheme.dark(
          primary: primaryBtnColor,
          onPrimary: Colors.white,
          secondary: primaryBtnColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.black,
          onSurface: Colors.white,
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
      );

  static List<LocalizationsDelegate<dynamic>> _buildLocalizationDelegates() {
    return [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      DefaultMaterialLocalizations.delegate, // fallback للـ Material
      DefaultWidgetsLocalizations.delegate, // fallback للـ Widgets
    ];
  }

  // Helper method to get supported locales
  static List<Locale> getSupportedLocales() {
    return const [
      Locale('ar'),
      Locale('en'),
      Locale('fr'),
      Locale('sw'),
      Locale('ak'),
      Locale('ff'),
      Locale('yo'),
      Locale('lg'),
    ];
  }
}

class FallbackLocalizationDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const FallbackLocalizationDelegate();

  // حدد اللغات اللي عايز تدعمها
  static const List<Locale> _supported = [
    Locale('lg', 'UG'), // Luganda (Uganda)
    Locale('sw', 'KE'), // Swahili (Kenya)
    Locale('sw', 'TZ'), // Swahili (Tanzania)
    Locale('yo', 'NG'), // Yoruba (Nigeria)
    Locale('ff', 'MR'), // Fulfulde (Mauritania)
    Locale('ak', 'GH'), // Akan (Ghana)
    Locale('fr', 'CI'), // French (Côte d'Ivoire)
  ];

  @override
  bool isSupported(Locale locale) {
    return _supported.contains(locale);
  }

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    // بيرجع DefaultWidgetsLocalizations (النصوص بالإنجليزي)
    return SynchronousFuture(const DefaultWidgetsLocalizations());
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<WidgetsLocalizations> old) {
    return false;
  }
}
