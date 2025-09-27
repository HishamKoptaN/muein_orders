import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../../features/home/present/home_view.dart';
import '../../features/language/view/select_language.dart';
import 'app_routes.dart';

class AppRouterRedirect {
  // مسارات مسموحة للجميع (مصادق أو غير مصادق)
  static const Set<String> alwaysAccessible = {
    AppRoutes.selectLanguage,
  };

  // مسارات عامة بس للي مش عامل تسجيل دخول
  static const Set<String> public = {
    AppRoutes.authChoice,
    AppRoutes.signIn,
    AppRoutes.signUp,
    AppRoutes.forgotPass,
  };

  static String? handleRedirect(
    BuildContext context,
    GoRouterState goRouterState,
    AuthBloc authBloc,
  ) {
    final path = goRouterState.uri.path;
    final location = path.startsWith('/') ? path.substring(1) : path;

    return authBloc.state.when(
      loading: () => null,
      authenticated: () {
        if (location == HomeView.routeName ||
            alwaysAccessible.contains(location)) {
          return null; // ابق في الصفحة الرئيسية أو المسارات المشتركة
        }
        if (public.contains(location)) {
          return '/${HomeView.routeName}'; // لو حاول يروح لمسار عام → رجّعه للـ Home
        }
        return null; // باقي المسارات الخاصة مسموحة
      },
      unauthenticated: () {
        if (alwaysAccessible.contains(location)) {
          return null; // ابق في التعليمات أو اختيار اللغة
        }
        if (public.contains(location)) {
          return null; // باقي المسارات العامة مسموحة
        }
        return '/${SelectLanguageView.routeName}'; // أي حاجة تانية → رجّعه للغة
      },
      failure: (_) => '/${AuthChoiceView.routeName}',
    );
  }
}
