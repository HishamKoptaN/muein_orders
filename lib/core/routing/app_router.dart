import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../app/global_variable.dart' as globals;
import '../di/dependency_injection.dart';
import 'app_router_redirect.dart';
import 'config/route_config.dart';
import 'error_page.dart';
import 'go_router_refresh.dart';

class AppRouter {
  static GoRouter create({required AuthBloc authBloc}) {
    return GoRouter(
      initialLocation: RouteConfig.initialLocation,
      navigatorKey: globals.GlobalVariable.navState,
      debugLogDiagnostics: true,
      routes: RouteConfig.routes,
      refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
      redirect: (context, state) =>
          AppRouterRedirect.handleRedirect(context, state, authBloc),
      errorBuilder: (context, state) =>
          ErrorPageBuilder.build(context, message: state.error?.toString()),
    );
  }
}
