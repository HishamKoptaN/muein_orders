import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Common test functions and utilities

// Creates a mock navigator to test navigation
Future<void> pumpWidgetWithNavigation(
  WidgetTester tester, {
  required Widget widget,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: widget,
      navigatorObservers: [
        MockNavigatorObserver(),
      ],
    ),
  );
  await tester.pumpAndSettle();
}

// Mock navigator observer
class MockNavigatorObserver extends NavigatorObserver {
  final _history = <Route<dynamic>>[];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _history.add(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _history.remove(route);
  }

  // Add more navigation methods as needed
}

// Common test widgets
Widget createWidgetForTesting({required Widget child}) {
  return MaterialApp(
    home: Scaffold(
      body: child,
    ),
  );
}

// Common test matchers
final emailMatcher = isA<String>()
    .having((s) => s.isEmpty || s.contains('@'), 'is valid email', isTrue);

final passwordMatcher = isA<String>()
    .having((s) => s.length >= 6, 'is valid password', isTrue);
