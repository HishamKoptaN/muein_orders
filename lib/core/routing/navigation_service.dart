import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationService {
  NavigationService._();
  static Future<T?> pushNamed<T>({
    required BuildContext context,
    required String routeName,
    Map<String, String> pathParameters = const {},
    Map<String, dynamic>? extra,
  }) async {
    return await context.pushNamed<T?>(
      routeName,
      pathParameters: pathParameters,
      extra: extra,
    );
  }

  static void goBack<T>(BuildContext context, [T? result]) {
    if (context.canPop()) {
      context.pop<T>(result);
    }
  }

  static void replace({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? extra,
  }) {
    context.replace(routeName, extra: extra);
  }

  static void navigateAndRemoveUntil({
    required BuildContext context,
    required String routeName,
    Map<String, dynamic>? arguments,
  }) {
    context.goNamed(routeName, extra: arguments);
  }

  static Future<T?> push<T>({
    required BuildContext context,
    required String routeName,
    Object? extra,
  }) {
    return context.push<T>('/$routeName', extra: extra);
  }

  static void pushReplacementNamed(
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
    context.go('/$routeName', extra: extra);
  }
}
