import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/auth_choice/present/views/auth_choice_view.dart';
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
    final state = authBloc.state;
    final path = goRouterState.uri.path.replaceAll(RegExp('^/'), '');
    return state.when(
      // طول فترة التحميل => خليك على splash (يعني مفيش redirect)
      loading: () => null,
      unauthenticated: () {
        if (!public.contains(path)) {
          return AuthChoiceView.routeName;
        }
        return null;
      },
      authenticated: (_) {
        if (public.contains(path)) {
          return OrdersView.routeName;
        }
        return null;
      },
      failure: (_) {
        return AuthChoiceView.routeName;
      },
    );
  }
}
