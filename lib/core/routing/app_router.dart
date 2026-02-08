// ignore_for_file: unused_import
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth/present/views/auth_view.dart';
import '../../features/auth/change_pass/present/views/change_pass_view.dart';
import '../../features/home/present/view/home_view.dart';
import '../app/global_variable.dart';
import 'config/route_config.dart';
import 'error_page.dart';

class AppRouter {
  static GoRouter create() {
    return GoRouter(
      navigatorKey: GlobalVariable.navState,
      routes: RouteConfig.routes,
      initialLocation: !kDebugMode
          ? '/${AuthView.routeName}'
          : '/${AuthView.routeName}',
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
