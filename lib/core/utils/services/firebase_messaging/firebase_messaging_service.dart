import 'dart:developer';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

import '../device_service.dart';

@Singleton()
class FirebaseMessagingService {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;
  Future<void> initialize() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    await _requestPermission();
    await FirebaseMessaging.instance.subscribeToTopic('all');
    log('subscribed To Topic all ');
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    await Firebase.initializeApp();
    log('📩 رسالة إشعار في الخلفية: ${message.messageId}');
  }

  void _handleMessageOpenedApp(RemoteMessage message) {
    log('📨 تم فتح التطبيق من خلال الإشعار: ${message.notification?.title}');
  }

  void _handleForegroundMessage(RemoteMessage message) {
    log('📨 إشعار أثناء تشغيل التطبيق: ${message.notification?.title}');
  }

  Future<void> _requestPermission() async {
    if (DeviceService.isDesktopPlatform()) {
      return;
    }
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    switch (settings.authorizationStatus) {
      case AuthorizationStatus.authorized:
        break;
      case AuthorizationStatus.provisional:
        break;
      case AuthorizationStatus.denied:
        break;
      case AuthorizationStatus.notDetermined:
        break;
    }
  }

  static Future<String> getFcmToken() async {
    if (DeviceService.isDesktopPlatform()) {
      return '';
    }
    try {
      if (Platform.isIOS) {
        final apnsToken = await _firebaseMessaging.getAPNSToken();
        if (apnsToken == null) {
          return 'apns_token_not_ready';
        }
      }

      final token = await _firebaseMessaging.getToken();
      if (token != null) {
        return token;
      } else {
        return 'no_fcm_token_available';
      }
    } catch (e) {
      return e.toString();
    }
  }

  Stream<String> get onTokenRefresh => _firebaseMessaging.onTokenRefresh;
}
