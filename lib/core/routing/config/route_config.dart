import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../../features/auth/sign_up/present/sign_up_views.dart';
import '../../../features/language/view/select_language.dart';
import '../../../features/onboarding/present/view/onboarding_view.dart';
import '../../../features/orders/present/views/orders_view.dart';
import '../route_utils.dart';

/// Development mode configuration

/// Centralized route configuration for the application
class RouteConfig {
  static List<RouteBase> get routes {
    final routes = [
      createRoute(
        routeName: OnBoardingView.routeName,
        builder: (context, state) => const OnBoardingView(),
      ),
      createRoute(
        routeName: SelectLanguageView.routeName,
        builder: (context, state) => const SelectLanguageView(),
      ),
      createRoute(
        routeName: AuthChoiceView.routeName,
        builder: (context, state) => const AuthChoiceView(),
      ),
      createRoute(
        routeName: ForgotPassView.routeName,
        builder: (context, state) => const ForgotPassView(),
      ),
      createRoute(
        routeName: SignInView.routeName,
        builder: (context, state) => const SignInView(),
      ),
      createRoute(
        routeName: SignUpView.routeName,
        builder: (context, state) => const SignUpView(),
      ),
      createRoute(
        routeName: OrdersView.routeName,
        builder: (context, state) => const OrdersView(),
      ),
    ];

    // Debug print all available routes
    if (kDebugMode) {
      debugPrint('\n===== AVAILABLE ROUTES =====');
      void printRoutes(List<RouteBase> routes, [String prefix = '']) {
        for (final route in routes) {
          if (route is GoRoute) {
            debugPrint('$prefix${route.name} -> ${route.path}');
            if (route.routes.isNotEmpty) {
              printRoutes(route.routes, '$prefix  ');
            }
          }
        }
      }

      printRoutes(routes);
      debugPrint('==========================\n');
    }

    return routes;
  }

  /// Returns the initial location based on the app state and environment
  /// This is used to determine the first route when the app starts
  /// In debug mode, it will go to the sign-in screen for easier development
  static String get initialLocation {
    if (kDebugMode) {
      debugPrint('Initial route set to: /${AuthChoiceView.routeName}');
      return '/${AuthChoiceView.routeName}';
    }
    // For release mode
    debugPrint('Initial route set to: /${AuthChoiceView.routeName}');
    return '/${AuthChoiceView.routeName}';
  }

  /// Returns the error page builder
  static Page<dynamic> errorPageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return NoTransitionPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text('Page not found: ${state.uri.path}'),
        ),
      ),
    );
  }
}
