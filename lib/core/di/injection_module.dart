import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:storage_utils/storage_utils.dart';
import '../../features/docs/data/datasources/docs_api.dart';
import '../../features/notifications/data/datasources/notifications_api.dart';
import '../../features/orders/data/datasources/orders_api.dart';
import '../networking/network_info.dart';

@module
abstract class InjectionModule {
  // Singleton instance of InternetConnection
  @lazySingleton
  InternetConnection get connectionChecker => InternetConnection.createInstance();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
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
  @lazySingleton
  PrefsStorageService get prefsStorageService => const PrefsStorageService();

  @lazySingleton
  SecureStorageService get secureStorageService => const SecureStorageService();

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
        scopes: [
          'email',
          'https://www.googleapis.com/auth/contacts.readonly',
        ],
      );
}
