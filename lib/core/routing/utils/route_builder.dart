import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/translated_text.dart';

class RouteBuilder {
  static GoRoute goRoute({
    required String routeName,
    required Widget Function(BuildContext context, GoRouterState state) builder,
    List<RouteBase> routes = const [],
  }) {
    return GoRoute(
      path: '/$routeName',
      name: routeName,
      builder: builder,
      routes: routes,
    );
  }

  static Page<dynamic> errorPageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return NoTransitionPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(child: TrText('Page not found: ${state.uri.path}')),
      ),
    );
  }
}
