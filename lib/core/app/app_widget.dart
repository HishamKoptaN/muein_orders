import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart';
import '../../features/auth/sign_in/present/bloc/sign_in_bloc.dart';
import '../../features/auth/sign_up/present/bloc/sign_up_bloc.dart';
import '../../features/cached_docs/present/bloc/cached_doc_bloc.dart';
import '../../features/docs/present/blocs/docs_bloc/docs_bloc.dart';
import '../../features/financial/present/financial_rep_bloc/financial_bloc.dart';
import '../../features/home/present/bloc/home_bloc.dart';
import '../../features/instructions/present/bloc/instructions_bloc.dart';
import '../../features/language/bloc/language_bloc.dart';
import '../../features/orders/present/bloc/orders_bloc.dart';
import '../../features/profile/present/bloc/profile_bloc.dart';
import '../../features/theme/blocs/theme_bloc.dart';
import '../config/app_config.dart';
import '../di/dependency_injection.dart';
import '../localization/app_localization_setup.dart';
import '../routing/app_router.dart';

class MueinOrdersApp extends StatelessWidget {
  const MueinOrdersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageBloc>(create: (_) => getIt<LanguageBloc>()),
        BlocProvider<ThemeBloc>(create: (_) => getIt<ThemeBloc>()),
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.check()),
        ),
        BlocProvider<InstructionsBloc>(
          create: (_) => getIt<InstructionsBloc>(),
        ),
        BlocProvider<SignInBloc>(create: (_) => getIt<SignInBloc>()),
        BlocProvider<SignUpBloc>(create: (_) => getIt<SignUpBloc>()),
        BlocProvider<ForgotPassBloc>(create: (_) => getIt<ForgotPassBloc>()),
        BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
        BlocProvider<OrdersBloc>(create: (_) => getIt<OrdersBloc>()),
        BlocProvider<DocsBloc>(create: (_) => getIt<DocsBloc>()),
        BlocProvider<CachedDocBloc>(create: (_) => getIt<CachedDocBloc>()),
        BlocProvider<FinancialBloc>(create: (_) => getIt<FinancialBloc>()),
        BlocProvider<ProfileBloc>(create: (_) => getIt<ProfileBloc>()),
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
                  return MaterialApp.router(
                    title: AppConfig.appName,
                    debugShowCheckedModeBanner: false,
                    // theme: _lightTheme(buttonSize, primaryBtnColor),
                    // darkTheme: _lightTheme(buttonSize, primaryBtnColor),
                    // themeMode: ThemeMode.light,
                    locale: languageState.maybeWhen(
                      loaded: (locale) => locale,
                      orElse: () => const Locale('ar'),
                    ),
                    localizationsDelegates:
                        AppLocalizationSetup.localizationDelegates,
                    supportedLocales: AppLocalizationSetup.supportedLocales,
                    localeResolutionCallback:
                        AppLocalizationSetup.localeResolutionCallback,
                    routerConfig: AppRouter.create(),
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
}
