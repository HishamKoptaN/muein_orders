import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/Layouts/my_safe_area.dart';
import '../middlewares/auth_guard.dart'
    show getRedirectLocation, allowAllGuard, RouteGuard;

GoRoute buildRoute({
  required String path,
  required Widget Function(BuildContext, GoRouterState) builder,
  String? name,
  List<RouteBase> routes = const [],
  RouteGuard? guard,
  bool useFullScreenDialog = false,
  bool maintainState = true,
  required bool useSafeArea,
}) {
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
      useSafeArea: useSafeArea,
    ),
    routes: routes,
  );
}

Page _buildPageWithGuard({
  required BuildContext context,
  required GoRouterState state,
  required Widget Function(BuildContext, GoRouterState) builder,
  required RouteGuard? guard,
  bool useFullScreenDialog = false,
  bool maintainState = true,
  required bool useSafeArea,
}) {
  if (guard == null) {
    return MaterialPage(
      key: state.pageKey,
      fullscreenDialog: useFullScreenDialog,
      maintainState: maintainState,
      child: AppSafeArea(child: builder(context, state)),
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
            return AppSafeArea(
              enabled: useSafeArea,
              child: builder(context, state),
            );
          } else {
            final redirectTo = getRedirectLocation(guard);
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (redirectTo != null && state.uri.path != redirectTo) {
                GoRouter.of(context).go(redirectTo);
              }
            });
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
        }
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    ),
  );
}

List<RouteBase> createNestedRoutes({
  required String basePath,
  required List<RouteBase> routes,
}) {
  return [
    GoRoute(
      path: basePath,
      redirect: (context, state) {
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
