import 'dart:async';

import 'package:flutter/material.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((_) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

class GoRouterRefreshListenable extends ChangeNotifier {
  final List<Listenable> _listeners;

  GoRouterRefreshListenable(this._listeners) {
    for (final listener in _listeners) {
      listener.addListener(notifyListeners);
    }
  }

  @override
  void dispose() {
    for (final listener in _listeners) {
      listener.removeListener(notifyListeners);
    }
    super.dispose();
  }
}
