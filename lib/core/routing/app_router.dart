// ignore_for_file: unused_import
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../features/auth/sign_up/present/views/sign_up_views.dart';
import '../../features/home/present/view/home_view.dart';
import '../../features/notifications/present/view/notifications_view.dart';
import '../../features/orders/present/views/orders_view.dart';
import '../../features/profile/present/views/profile_view.dart';
import '../app/global_variable.dart';
import '../di/dependency_injection.dart';
import 'app_router_redirect.dart';
import 'config/route_config.dart';
import 'error_page.dart';
import 'go_router_refresh.dart';

class AppRouter {
  static GoRouter create() {
    return GoRouter(
      initialLocation: '/${AuthView.routeName}',
      routes: RouteConfig.routes,
      refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
      navigatorKey: GlobalVariable.navState,
      debugLogDiagnostics: true,
      redirect: (context, state) {
        final String location = state.matchedLocation;
        final bool isGuestRoute = AppRouterRedirect.authenticatedOnly.any(
          location.startsWith,
        );
        final bool isAuthRoute = AppRouterRedirect.public.any(
          location.startsWith,
        );
        return getIt<AuthBloc>().state.maybeWhen(
          authenticated: () {
            if (isGuestRoute || location == '/${AuthView.routeName}') {
              return '/${OrderDocsView.routeName}';
              // return '/${HomeView.routeName}';
            }
            return null;
          },
          unauthenticated: () {
            if (isAuthRoute) return '/${SignInView.routeName}';
            if (location == '/${AuthView.routeName}') {
              return '/${SignInView.routeName}';
            }
            return null;
          },
          orElse: () => null,
        );
      },
      errorBuilder: (context, state) {
        return ErrorPageBuilder.build(
          context,
          message: state.error?.toString(),
        );
      },
    );
  }
}
