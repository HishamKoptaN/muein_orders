import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routing/app_router.dart';
import '../../features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart';
import '../../features/auth/sign_in/present/bloc/sign_in_bloc.dart';
import '../../features/auth/sign_up/present/bloc/sign_up_bloc.dart';
import '../../features/language/bloc/language_bloc.dart';
import '../../features/onboarding/present/bloc/onboarding_bloc.dart';
import '../../l10n/app_localizations.dart';
import '../di/dependency_injection.dart';
import '../theme/app_theme.dart';

class MubinOrdersAppWrapper extends StatelessWidget {
  const MubinOrdersAppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnboardingBloc>(
          create: (context) => getIt<OnboardingBloc>(),
        ),
        BlocProvider<SignInBloc>(
          create: (context) => getIt<SignInBloc>(),
        ),
        BlocProvider<SignUpBloc>(
          create: (context) => getIt<SignUpBloc>(),
        ),
        BlocProvider<OnboardingBloc>(
          create: (context) => getIt<OnboardingBloc>(),
        ),
        BlocProvider<ForgotPassBloc>(
          create: (context) => getIt<ForgotPassBloc>(),
        ),
        BlocProvider<LanguageBloc>(
          create: (context) => getIt<LanguageBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocBuilder<LanguageBloc, LanguageState>(
            builder: (context, languageState) {
              return MaterialApp.router(
                title: 'Mubin Orders',
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme,
                routerConfig: AppRouter.router,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('ar'),
                  Locale('en'),
                  Locale('lg', 'UG'),
                  Locale('sw', 'TZ'),
                  Locale('sw', 'KE'),
                ],
                localeResolutionCallback: (locale, supportedLocales) {
                  if (locale == null) return const Locale('en');
                  for (final supported in supportedLocales) {
                    if (supported.languageCode == locale.languageCode) {
                      return supported;
                    }
                  }
                  return const Locale('en');
                },
                locale: languageState.maybeWhen(
                  loaded: (currentLocale) => currentLocale,
                  orElse: () => const Locale('ar'),
                ),
                builder: (context, child) => Directionality(
                  textDirection: TextDirection.rtl,
                  child: child!,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
