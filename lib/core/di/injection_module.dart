// core/di/injection_module.dart
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectionModule {
  // Internet connection checker
  @lazySingleton
  InternetConnection get connectionChecker =>
      InternetConnection.createInstance();

  // Firebase services
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  // SharedPreferencesAsync
  @preResolve
  Future<SharedPreferencesAsync> get prefs async =>
      await SharedPreferencesAsync();

  // Secure storage
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
