import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Base class for all route guards
abstract class RouteGuard {
  /// Determines if the current user can access the route
  Future<bool> canAccess(
    BuildContext context,
    GoRouterState state,
  );

  /// The page to show if access is denied
  String? get redirectLocation;
}

/// Default implementation of [RouteGuard] that always allows access
class AllowAllGuard implements RouteGuard {
  @override
  Future<bool> canAccess(BuildContext context, GoRouterState state) async {
    return true;
  }

  @override
  String? get redirectLocation => null;
}

/// Redirects to a specific route if the user is not authenticated
class AuthRequiredGuard implements RouteGuard {
  @override
  Future<bool> canAccess(BuildContext context, GoRouterState state) async {
    return true; // For now, always return true
  }

  @override
  String? get redirectLocation => 'sign-in';
}

/// Redirects to a specific route if the user is already authenticated
class GuestOnlyGuard implements RouteGuard {
  @override
  Future<bool> canAccess(BuildContext context, GoRouterState state) async {
    return true; // For now, always return true
  }

  @override
  String? get redirectLocation => 'sign-in';
}
