import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/clipboard_service.dart';

@module
abstract class InjectionModule {
  // Internet connection checker
  @singleton
  InternetConnection get connectionChecker =>
      InternetConnection.createInstance();
  @singleton
  FlutterLocalNotificationsPlugin get notificationsPlugin =>
      FlutterLocalNotificationsPlugin();
  // Firebase services
  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @singleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
  @preResolve
  Future<SharedPreferencesAsync> get prefs async =>
      await SharedPreferencesAsync();
  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  // Duration for cache strategy
  @singleton
  Duration get cacheDefaultTtl => const Duration(minutes: 5);

  // Clipboard service
  @singleton
  ClipboardService get clipboardService => ClipboardServiceImpl();
}
