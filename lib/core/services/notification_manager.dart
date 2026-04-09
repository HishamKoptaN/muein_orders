import 'dart:async';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NotificationManager {
  final FlutterLocalNotificationsPlugin _notifications;

  NotificationManager(this._notifications);

  Future<void> initialize() async {
    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidInit);
    await _notifications.initialize(settings: initSettings);
    final androidPlatform = _notifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    await androidPlatform?.requestNotificationsPermission();
  }

  Future<void> cancel(int id) async => _notifications.cancel(id: id);
}
