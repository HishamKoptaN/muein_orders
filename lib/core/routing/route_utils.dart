import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/Layouts/my_safe_area.dart';

GoRoute goRoute({
  required String routeName,
  required Widget Function(BuildContext, GoRouterState) builder,
  List<RouteBase> routes = const [],
}) {
  final normalizedRoute = routeName.replaceAll(RegExp(r'^/+|/+\$'), '');
  return GoRoute(
    path: '/$normalizedRoute',
    name: normalizedRoute,
    builder: (context, state) => AppSafeArea(child: builder(context, state)),
    routes: routes,
  );
}

Page<dynamic> materialPageBuilder({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return MaterialPage(key: state.pageKey, child: child);
}

String normalizeRouteName(String name) {
  return name.replaceAll(RegExp(r'^/+|/+\$'), '');
}

bool isValidRoutePath(String path) {
  if (path.isEmpty) return false;
  if (!path.startsWith('/')) return false;
  if (path.contains('//')) return false;
  return true;
}
