import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/home/present/home_view.dart';
import '../../features/language/view/select_language.dart';
import '../../features/onboarding/present/view/onboarding_view.dart';
import '../../features/orders/present/views/orders_view.dart';
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
  // مسارات خاصة بالمستخدمين المصادقين
  static const Set<String> authenticatedOnly = {
    HomeView.routeName,
    OrdersView.routeName,
    InstructionsView.routeName,
  };
  static String? handleRedirect(
    BuildContext context,
    GoRouterState goRouterState,
    AuthBloc authBloc,
  ) {
    final path = goRouterState.uri.path;
    final location = path.startsWith('/') ? path.substring(1) : path;
    return authBloc.state.whenOrNull(
      authenticated: (redirect) {
        if (authenticatedOnly.contains(location) ||
            alwaysAccessible.contains(location)) {
          return null;
        }
        if (!redirect) {
          return '/${InstructionsView.routeName}';
        }
        return '/${HomeView.routeName}';
      },
      unauthenticated: () {
        if (alwaysAccessible.contains(location) || public.contains(location)) {
          return null;
        }
        return '/${SelectLanguageView.routeName}';
      },
    );
  }
}
