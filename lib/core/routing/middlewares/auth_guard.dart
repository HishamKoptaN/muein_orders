import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

typedef RouteGuard = Future<bool> Function(BuildContext, GoRouterState);

Future<bool> _authRequiredGuard(
  BuildContext context,
  GoRouterState state,
) async {
  return false;
}

Future<bool> _allowAllGuard(BuildContext context, GoRouterState state) async =>
    true;

String? getRedirectLocation(RouteGuard guard) {
  if (guard == _authRequiredGuard) return 'sign-in';
  return null;
}

const RouteGuard authRequiredGuard = _authRequiredGuard;
const RouteGuard allowAllGuard = _allowAllGuard;
