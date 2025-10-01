import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/present/home_view.dart';
import '../../features/language/view/select_language.dart';
import '../../features/onboarding/present/view/onboarding_view.dart';
import '../app/global_variable.dart';
import 'app_router_redirect.dart';
import 'config/route_config.dart';
import 'error_page.dart';
import 'go_router_refresh.dart';

class AppRouter {
  static GoRouter create() {
    final authBloc = GlobalVariable.authBloc;
    return GoRouter(
      navigatorKey: GlobalVariable.navState,
      debugLogDiagnostics: true,
      routes: RouteConfig.routes,
      refreshListenable: GoRouterRefreshStream(authBloc.stream),
      initialLocation: authBloc.state.whenOrNull(
        authenticated: (redirect) {
          if (kDebugMode) {
            return '/${HomeView.routeName}';
          }
          if (!redirect) {
            return '/${InstructionsView.routeName}';
          }
          return '/${HomeView.routeName}';
        },
        unauthenticated: () {
          return '/${SelectLanguageView.routeName}';
        },
      ),
      redirect: (context, state) {
        return AppRouterRedirect.handleRedirect(
          context,
          state,
          authBloc,
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
