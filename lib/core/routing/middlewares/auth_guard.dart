import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

typedef RouteGuard = Future<bool> Function(BuildContext, GoRouterState);

/// A guard that requires authentication
Future<bool> _authRequiredGuard(
  BuildContext context,
  GoRouterState state,
) async {
  return false;
}

/// A guard that allows all access
Future<bool> _allowAllGuard(BuildContext context, GoRouterState state) async =>
    true;

/// Gets the redirect location for a guard
String? getRedirectLocation(RouteGuard guard) {
  if (guard == _authRequiredGuard) return 'sign-in';
  return null;
}

/// Guard instances
const RouteGuard authRequiredGuard = _authRequiredGuard;
const RouteGuard allowAllGuard = _allowAllGuard;
