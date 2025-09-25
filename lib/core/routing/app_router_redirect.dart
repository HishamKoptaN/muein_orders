import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../../features/home/present/home_view.dart';
import '../../features/language/view/select_language.dart';
import '../../features/orders/present/views/orders_view.dart';
import 'app_routes.dart';

class AppRouterRedirect {
  static const Set<String> public = {
    AppRoutes.selectLanguage,
    AppRoutes.onboarding,
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
      loading: () {
        return null; // Stay on current route while loading
      },
      unauthenticated: () {
        // إذا كان المستخدم غير مصدق عليه
        if (location == SelectLanguageView.routeName) {
          return null; // ابق في صفحة اختيار اللغة
        }
        if (public.contains(location)) {
          return null; // Allow access to public routes
        }
        // إذا كان في مسار خاص، اذهب إلى صفحة اختيار اللغة
        return '/${SelectLanguageView.routeName}';
      },
      authenticated: () {
        // إذا كان المستخدم مصدق عليه
        if (location == HomeView.routeName) {
          return null; // ابق في الصفحة الرئيسية
        }
        if (public.contains(location)) {
          // إذا كان في مسار عام، اذهب إلى الصفحة الرئيسية
          return '/${HomeView.routeName}';
        }
        return null; // Allow access to private routes
      },
      failure: (_) {
        return '/${AuthChoiceView.routeName}';
      },
    );
  }
}
