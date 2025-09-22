import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Creates a GoRoute with the given widget and configuration
///
/// [routeName] should be a simple name without leading/trailing slashes (e.g., 'home', 'profile')
/// [name] is optional and will default to routeName if not provided
GoRoute createRoute({
  required String routeName,
  required Widget Function(BuildContext, GoRouterState) builder,
  List<RouteBase> routes = const [],
}) {
  // Ensure route name doesn't start with a slash
  final name = routeName.startsWith('/') ? routeName.substring(1) : routeName;
  
  return GoRoute(
    path: '/$name',
    name: name,
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

/// Helper function to normalize route names
String normalizeRouteName(String name) {
  return name.startsWith('/') ? name.substring(1) : name;
}
