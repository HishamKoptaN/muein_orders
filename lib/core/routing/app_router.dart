import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/views/auth_view.dart';
import '../app/global_variable.dart';
import 'config/route_config.dart';
import 'error_page.dart';

class AppRouter {
  static GoRouter create() {
    return GoRouter(
      navigatorKey: GlobalVariable.navState,
      routes: RouteConfig.routes,
      initialLocation: '/${AuthView.routeName}',
      debugLogDiagnostics: true,
      errorBuilder: (context, state) {
        return ErrorPageBuilder.build(
          context,
          message: state.error?.toString(),
        );
      },
    );
  }
}
