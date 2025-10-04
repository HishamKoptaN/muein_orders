import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/sign_up/present/views/sign_up_views.dart';
import '../../features/docs/present/views/add_cached_doc_view.dart';
import '../../features/home/present/view/home_view.dart';
import '../../features/language/view/select_language.dart';
import '../../features/onboarding/present/view/onboarding_view.dart';
import '../../features/orders/present/views/orders_view.dart';
import '../../features/profile/present/views/profile_view.dart';

class AppRouterRedirect {
  // مسارات مسموحة للجميع (مصادق أو غير مصادق)
  static const Set<String> alwaysAccessible = {
    SelectLanguageView.routeName,
  };

  // مسارات عامة بس للي مش عامل تسجيل دخول
  static const Set<String> public = {
    SignInView.routeName,
    SignUpView.routeName,
    ForgotPassView.routeName,
  };
  // مسارات خاصة بالمستخدمين المصادقين
  static const Set<String> authenticatedOnly = {
    HomeView.routeName,
    OrdersView.routeName,
    InstructionsView.routeName,
    ProfileView.routeName,
    AddCachedDocView.routeName,
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
