import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import '../../features/docs/data/datasources/docs_api.dart';
import '../../features/orders/data/datasources/orders_api.dart';
import '../networking/network_info.dart';

@module
abstract class InjectionModule {
  @injectable
  InternetConnection get connectionChecker => InternetConnection();
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
}
