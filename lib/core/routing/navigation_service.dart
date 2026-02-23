import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationService {
  NavigationService._();
  static Future<T?> pushNamed<T>({
    required BuildContext context,
    required String routeName,
    Map<String, String> pathParameters = const {},
    Map<String, dynamic>? arguments,
  }) async {
    return await context.pushNamed<T?>(
      routeName,
      pathParameters: pathParameters,
      extra: arguments,
    );
  }

  static void goBack<T>(BuildContext context, [T? result]) {
    if (context.canPop()) {
      context.pop<T>(result);
    }
  }

  static void replaceWith({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? arguments,
  }) {
    context.goNamed(routeName, extra: arguments);
  }

  static void navigateAndRemoveUntil({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? arguments,
  }) {
    context.goNamed(routeName, extra: arguments);
  }

  static Future<T?> push<T>(
    BuildContext context,
    String routeName, {
    Object? extra,
  }) {
    return context.pushNamed<T>(routeName, extra: extra);
  }

  static void pushReplacement(
    BuildContext context,
    String routeName, {
    Object? extra,
  }) {
    context.pushReplacementNamed(routeName, extra: extra);
  }

  static void go({
    required BuildContext context,
    required String routeName,
    Object? extra,
  }) {
    context.goNamed(routeName, extra: extra);
  }
}
