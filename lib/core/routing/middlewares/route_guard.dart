import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class RouteGuard {
  Future<bool> canAccess(BuildContext context, GoRouterState state);

  String? get redirectLocation;
}

class AllowAllGuard implements RouteGuard {
  @override
  Future<bool> canAccess(BuildContext context, GoRouterState state) async {
    return true;
  }

  @override
  String? get redirectLocation => null;
}

class AuthRequiredGuard implements RouteGuard {
  @override
  Future<bool> canAccess(BuildContext context, GoRouterState state) async {
    return true;
  }

  @override
  String? get redirectLocation => 'sign-in';
}

class GuestOnlyGuard implements RouteGuard {
  @override
  Future<bool> canAccess(BuildContext context, GoRouterState state) async {
    return true;
  }

  @override
  String? get redirectLocation => 'sign-in';
}
