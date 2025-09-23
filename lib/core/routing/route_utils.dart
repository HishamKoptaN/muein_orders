import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Creates a GoRoute with the given widget and configuration
///
/// [routeName] should be a simple name without leading/trailing slashes (e.g., 'home', 'profile')
GoRoute createRoute({
  required String routeName,
  required Widget Function(BuildContext, GoRouterState) builder,
  List<RouteBase> routes = const [],
}) {
  // تطبيع اسم المسار
  final normalizedRoute = routeName.replaceAll(RegExp(r'^/+|/+\$'), '');

  return GoRoute(
    path: '/$normalizedRoute',
    name: normalizedRoute,
    builder: (context, state) => builder(context, state),
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
  return name.replaceAll(RegExp(r'^/+|/+\$'), '');
}

/// Validates if a route path is valid
bool isValidRoutePath(String path) {
  if (path.isEmpty) return false;
  // يجب أن يبدأ المسار بشرطة مائلة
  if (!path.startsWith('/')) return false;
  // لا يجب أن يحتوي على مسارات متعددة متتالية
  if (path.contains('//')) return false;
  return true;
}
