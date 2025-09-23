import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/bloc/auth_bloc.dart';
import '../../features/docs/present/views/add_doc_view.dart';
import '../../features/home/present/home_view.dart';
import '../../features/language/view/select_language.dart';
import '../../features/orders/present/views/orders_view.dart';
import '../../features/auth/auth_choice/present/views/auth_choice_view.dart';
import '../all_imports.dart';
import '../app/global_variable.dart' as globals;
import '../di/dependency_injection.dart';
import 'app_router_redirect.dart';
import 'config/route_config.dart';
import 'error_page.dart';
import 'go_router_refresh.dart';

class AppRouter {
  static GoRouter create({required AuthBloc authBloc}) {
    return GoRouter(
      initialLocation: authBloc.state.maybeWhen(
        authenticated: () {
          return '/${AddDocView.routeName}';
        },
        unauthenticated: () {
          return '/${SelectLanguageView.routeName}';
        },
        failure: (_) {
          return '/${AuthChoiceView.routeName}';
        },
        orElse: () => '/${SelectLanguageView.routeName}',
      ),
      navigatorKey: globals.GlobalVariable.navState,
      debugLogDiagnostics: true,
      routes: RouteConfig.routes,
      refreshListenable: GoRouterRefreshStream(authBloc.stream),
      redirect: (context, state) {
        final redirectPath = AppRouterRedirect.handleRedirect(
          context,
          state,
          authBloc,
        );

        if (redirectPath != null) {
          debugPrint('Redirecting from ${state.uri.path} to $redirectPath');
        }

        return redirectPath;
      },
      errorBuilder: (context, state) {
        debugPrint('Route Error: ${state.error}');
        return ErrorPageBuilder.build(context,
            message: state.error?.toString());
      },
    );
  }
}
