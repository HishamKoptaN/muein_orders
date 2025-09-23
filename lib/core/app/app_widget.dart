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
import '../../features/docs/present/blocs/bloc/docs_bloc.dart';
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
                            locale: languageState.maybeWhen(
                              loaded: (locale) => locale,
                              orElse: () => const Locale('ar'),
                            ),
                            localizationsDelegates:
                                _buildLocalizationDelegates(),
                            supportedLocales: getSupportedLocales(),
                            localeResolutionCallback:
                                (locale, supportedLocales) {
                              // If the user's device locale is supported, use it
                              if (locale != null) {
                                for (final supportedLocale
                                    in supportedLocales) {
                                  if (supportedLocale.languageCode ==
                                      locale.languageCode) {
                                    return supportedLocale;
                                  }
                                }
                              }
                              // Otherwise, use the first supported locale (Arabic)
                              return supportedLocales.first;
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
      // App-specific localization delegate
      AppLocalizations.delegate,

      // Built-in Flutter localization delegates
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,

      // Fallback for unsupported languages
      const FallbackLocalizationDelegate(),
    ];
  }

  // Helper method to get supported locales
  static List<Locale> getSupportedLocales() {
    return const [
      Locale('ar'),
      Locale('en'),
      Locale('sw'),
      Locale('fr'),
      Locale('ak'),
      Locale('ff'),
      Locale('yo'),
      Locale('lg'),
    ];
  }
}

/// Delegate مخصص للغات الغير مدعومة رسمياً في Flutter.
/// هنا مجرد dummy delegate بيخلي Flutter ما يرميش التحذير.
class FallbackLocalizationDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const FallbackLocalizationDelegate();

  // حدد اللغات اللي عايز تدعمها
  static const List<Locale> _supported = [
    Locale('lg', 'UG'), // Luganda (Uganda)
    Locale('sw', 'KE'), // Swahili (Kenya)
    Locale('sw', 'TZ'), // Swahili (Tanzania)
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
