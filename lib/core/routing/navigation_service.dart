import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Centralized navigation service using only GoRouter (name-based)
class NavigationService {
  NavigationService._();

  /// Navigate to a named route
  static Future<T?> navigateTo<T>({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? arguments,
    bool replace = false,
  }) async {
    if (replace) {
      context.goNamed(routeName, extra: arguments);
      return null;
    }
    return await context.pushNamed<T?>(routeName, extra: arguments);
  }

  /// Go back
  static void goBack<T>(BuildContext context, [T? result]) {
    if (context.canPop()) {
      context.pop<T>(result);
    }
  }

  /// Replace current route with a named one
  static void replaceWith({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? arguments,
  }) {
    context.goNamed(routeName, extra: arguments);
  }

  /// Navigate and clear previous stack
  static void navigateAndRemoveUntil({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? arguments,
  }) {
    context.goNamed(routeName, extra: arguments);
  }

  /// Push new named route
  static Future<T?> push<T>(
    BuildContext context,
    String routeName, {
    Object? extra,
  }) {
    return context.pushNamed<T>(routeName, extra: extra);
  }

  /// Push replacement with named route
  static void pushReplacement(
    BuildContext context,
    String routeName, {
    Object? extra,
  }) {
    context.pushReplacementNamed(routeName, extra: extra);
  }

  /// Go to a named route (replace stack)
  static void go({
    required BuildContext context,
    required String routeName,
    Object? extra,
  }) {
    context.goNamed(routeName, extra: extra);
  }
}
