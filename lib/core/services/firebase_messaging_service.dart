import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FirebaseMessagingService {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;
  //! معالج الإشعارات عند ورودها أثناء تشغيل التطبيق في الخلفية
  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
    log(
      "📩 رسالة إشعار في الخلفية: ${message.messageId}",
    );
  }

  //! تهيئة خدمة الإشعارات
  static Future<void> initialize() async {
    await Firebase.initializeApp();
    FirebaseMessaging.onBackgroundMessage(
      _firebaseMessagingBackgroundHandler,
    );
    FirebaseMessaging.onMessageOpenedApp.listen(
      (RemoteMessage message) {
        log("📨 تم فتح التطبيق من خلال الإشعار: ${message.notification?.title}");
      },
    );
    await _requestPermission();
  }

  //! طلب إذن استقبال الإشعارات
  static Future<void> _requestPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log(
        "✅ تم منح إذن الإشعارات",
      );
    } else {
      log(
        "🚫 تم رفض إذن الإشعارات",
      );
    }
  }

  //! جلب FCM Token
  Future<String?> getFCMToken() async {
    try {
      String? token = await _firebaseMessaging.getToken();
      log(
        "📌 تم جلب FCM Token: $token",
      );
      return token;
    } catch (e) {
      log(
        "❌ خطأ أثناء جلب FCM Token: $e",
      );
      return null;
    }
  }
}
