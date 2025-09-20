import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
@injectableInit
void configureDependencies() {
  // This will be called by the generated code
}

@module
abstract class InjectionModule {
  // Singleton instance of InternetConnection
  @lazySingleton
  InternetConnection get connectionChecker =>
      InternetConnection.createInstance();
  // Firebase Services
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
  // Shared Preferences
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  // Secure Storage
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
