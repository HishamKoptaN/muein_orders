import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../middlewares/auth_guard.dart'
    show getRedirectLocation, allowAllGuard, RouteGuard;

/// Creates a GoRoute with the given configuration
GoRoute buildRoute({
  required String path,
  required Widget Function(BuildContext, GoRouterState) builder,
  String? name,
  List<RouteBase> routes = const [],
  RouteGuard? guard,
  bool useFullScreenDialog = false,
  bool maintainState = true,
}) {
  // Use allowAllGuard if no guard is provided
  final effectiveGuard = guard ?? allowAllGuard;
  return GoRoute(
    path: path,
    name: name,
    pageBuilder: (context, state) => _buildPageWithGuard(
      context: context,
      state: state,
      builder: builder,
      guard: effectiveGuard,
      useFullScreenDialog: useFullScreenDialog,
      maintainState: maintainState,
    ),
    routes: routes,
  );
}

/// Builds a page with route guard
Page _buildPageWithGuard({
  required BuildContext context,
  required GoRouterState state,
  required Widget Function(BuildContext, GoRouterState) builder,
  required RouteGuard? guard,
  bool useFullScreenDialog = false,
  bool maintainState = true,
}) {
  if (guard == null) {
    return MaterialPage(
      key: state.pageKey,
      fullscreenDialog: useFullScreenDialog,
      maintainState: maintainState,
      child: builder(context, state),
    );
  }

  return MaterialPage(
    key: state.pageKey,
    fullscreenDialog: useFullScreenDialog,
    maintainState: maintainState,
    child: FutureBuilder<bool>(
      future: guard(context, state),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == true) {
            return builder(context, state);
          } else {
            final redirectTo = getRedirectLocation(guard);
            WidgetsBinding.instance.addPostFrameCallback(
              (_) {
                if (redirectTo != null && state.uri.path != redirectTo) {
                  GoRouter.of(context).go(redirectTo);
                }
              },
            );
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        }
        // Show loading indicator while checking auth state
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    ),
  );
}

/// Creates a nested route with the given configuration
List<RouteBase> createNestedRoutes({
  required String basePath,
  required List<RouteBase> routes,
}) {
  return [
    GoRoute(
      path: basePath,
      redirect: (context, state) {
        // Redirect to the first child route if base path is accessed directly
        if (routes.isNotEmpty) {
          final firstRoute = routes.first;
          if (firstRoute is GoRoute) {
            return '${state.uri.path}${firstRoute.path}';
          }
        }
        return null;
      },
      routes: routes,
    ),
  ];
}
