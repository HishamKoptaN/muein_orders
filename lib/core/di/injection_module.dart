import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../features/docs/data/datasources/docs_api.dart';
import '../../features/orders/data/datasources/orders_api.dart';
import '../../features/sign_in/data/data_sources/sign_in_api.dart';
import '../../features/main/data/datasources/main_api.dart';
import '../networking/network_info.dart';

@module
abstract class InjectionModule {
  InjectionModule() {
    log("InjectionModule has been initialized! 🚀");
  }
  @lazySingleton
  InternetConnection get connectionChecker => InternetConnection();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  NetworkInfo networkInfo(NetworkInfoImpl impl) => impl;
  @lazySingleton
  NetworkInfoImpl networkInfoImpl(InternetConnection connectionChecker) =>
      NetworkInfoImpl(connectionChecker: connectionChecker);
  @lazySingleton
  SignInRemDataSrc loginRemDataSrc(FirebaseAuth auth) =>
      SignInRemDataSrc(firebaseAuth: auth);
  //! MainApi
  @lazySingleton
  MainApi mainApi(Dio dio) => MainApi(
        dio,
      );
  //! SignInApi
  @lazySingleton
  SignInApi loginApi(Dio dio) => SignInApi(
        dio,
      );
  //! OrdersApi
  @lazySingleton
  OrdersApi ordersApi(Dio dio) => OrdersApi(
        dio,
      );
  //! OrdersApi
  @lazySingleton
  DocsApi docsApi(Dio dio) => DocsApi(
        dio,
      );
}
