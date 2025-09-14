import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Centralized navigation service for the app
/// 
/// Example usage:
/// ```dart
/// // Basic navigation
/// await AppRouter.navigateTo(
///   context: context,
///   routeName: 'home',
///   arguments: {'id': 123},
/// );
///
/// // Replace current screen
/// await AppRouter.replaceWith(
///   context: context,
///   routeName: 'profile',
///   arguments: {'userId': '123'},
/// );
///
/// // Navigate and remove all previous screens
/// await AppRouter.navigateAndRemoveUntil(
///   context: context,
///   routeName: 'dashboard',
/// );
///
/// // Go back with result
/// AppRouter.goBack(context, {'success': true});
/// ```
class AppRouter {
  // Private constructor to prevent instantiation
  AppRouter._();

  /// Navigate to a named route
  ///
  /// [replace] if true, replaces the current route instead of pushing a new one
  static Future<T?> navigateTo<T>({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? arguments,
    bool replace = false,
  }) async {
    try {
      if (replace) {
        context.goNamed(routeName, extra: arguments);
        return null;
      } else {
        return await context.pushNamed<T?>(routeName, extra: arguments);
      }
    } catch (e) {
      debugPrint('Navigation error to $routeName: $e');
      rethrow;
    }
  }

  /// Navigate back to the previous screen
  ///
  /// [result] Optional result to return to the previous screen
  static void goBack<T>(BuildContext context, [T? result]) {
    if (context.canPop()) {
      Navigator.of(context).pop<T>(result);
    } else {
      // If there's no route to pop, we can try to go to a fallback route
      // or just do nothing depending on your app's requirements
      debugPrint('No routes to pop');
    }
  }

  /// Replace the current route with a new one
  ///
  /// This will remove the current route from the navigation stack
  /// Returns void as go_router's navigation methods don't return values
  static Future<void> replaceWith({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? arguments,
  }) async {
    try {
      context.goNamed(routeName, extra: arguments);
    } catch (e) {
      debugPrint('Replace route error: $e');
      rethrow;
    }
  }

  /// Navigate to a new route and remove all previous routes
  ///
  /// This is typically used after login/signup to prevent going back
  /// Returns void as go_router's navigation methods don't return values
  static void navigateAndRemoveUntil({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? arguments,
  }) {
    try {
      // Using goNamed with a new navigation stack
      context.goNamed(routeName, extra: arguments);
    } catch (e) {
      debugPrint('Navigation with remove until error: $e');
      rethrow;
    }
  }

  /// Check if a named route exists in the current navigation stack
  static bool canPop(BuildContext context) {
    return context.canPop();
  }
}
