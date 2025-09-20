import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Creates a GoRoute with the given widget and configuration
GoRoute createRoute({
  required String routeName,
  required Widget Function(BuildContext, GoRouterState) builder,
  List<RouteBase> routes = const [],
  bool useFullPath = false,
}) {
  return GoRoute(
    path: useFullPath ? routeName : '/$routeName',
    name: routeName,
    builder: builder,
    routes: routes,
  );
}

/// Creates a material page route with the given widget
Page<dynamic> materialPageBuilder({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return MaterialPage(
    key: state.pageKey,
    child: child,
  );
}
