import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:storage_utils/storage_utils.dart' as storage_utils;

import '../../features/auth/sign_in/data/models/remember_me_preferences.dart';
import '../../features/docs/data/datasources/docs_api.dart';
import '../../features/notifications/data/datasources/notifications_api.dart';
import '../../features/orders/data/datasources/orders_api.dart';
import '../networking/network_info.dart';

@module
abstract class InjectionModule {
  // Singleton instance of InternetConnection
  @lazySingleton
  InternetConnection get connectionChecker =>
      InternetConnection.createInstance();
  @injectable
  NetworkInfo networkInfo(NetworkInfoImpl impl) => impl;
  @injectable
  NetworkInfoImpl networkInfoImpl(InternetConnection connectionChecker) =>
      NetworkInfoImpl(connectionChecker: connectionChecker);
  //! OrdersApi
  @injectable
  OrdersApi ordersApi(Dio dio) => OrdersApi(
        dio,
      );
  //! OrdersApi
  @injectable
  DocsApi docsApi(Dio dio) => DocsApi(
        dio,
      );
  //! NotificationsApi
  @injectable
  NotificationsApi notificationsApi(Dio dio) => NotificationsApi(
        dio,
      );
  //! Storage services
  // SecureStorageService is registered via @LazySingleton annotation in its file
  @lazySingleton
  storage_utils.PrefsStorageService get prefsStorageService =>
      const storage_utils.PrefsStorageService();

  @lazySingleton
  RememberMePreferences get rememberMePreferences => RememberMePreferences();

  // Firebase Services
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
}
