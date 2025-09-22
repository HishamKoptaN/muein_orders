import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/auth_choice/present/views/auth_choice_view.dart';
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
        if (public.contains(location) || location.isEmpty) {
          return null; // Allow access to public routes
        }
        return '/${SelectLanguageView.routeName}';
      },
      authenticated: () {
        if (public.contains(location) || location.isEmpty) {
          return '/${OrdersView.routeName}';
        }
        return null; // Allow access to private routes
      },
      failure: (_) {
        return '/${AuthChoiceView.routeName}';
      },
    );
  }
}
