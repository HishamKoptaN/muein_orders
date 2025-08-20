// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i264;

import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;

import '../../features/docs/data/datasources/docs_api.dart' as _i715;
import '../../features/docs/data/repo_impl/docs_repo_impl.dart' as _i430;
import '../../features/docs/domain/repo/docs_repo.dart' as _i672;
import '../../features/docs/domain/usecases/docs_use_cases.dart' as _i689;
import '../../features/docs/present/blocs/bloc/docs_bloc.dart' as _i395;
import '../../features/language/bloc/language_cubit.dart' as _i766;
import '../../features/orders/data/datasources/orders_api.dart' as _i165;
import '../../features/orders/data/repo_impl/orders_repo_impl.dart' as _i450;
import '../../features/orders/domain/repo/orders_repo.dart' as _i808;
import '../../features/orders/domain/usecases/orders_use_cases.dart' as _i802;
import '../../features/orders/present/bloc/orders_bloc.dart' as _i189;
import '../networking/interceptors/logging_interceptor.dart' as _i302;
import '../networking/network_info.dart' as _i303;
import 'api_module.dart' as _i804;
import 'injection_module.dart' as _i212;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    final apiModule = _$ApiModule();
    gh.factory<_i161.InternetConnection>(
        () => injectionModule.connectionChecker);
    gh.singleton<_i804.LoggingInterceptor>(() => _i804.LoggingInterceptor());
    gh.singleton<_i302.LoggingInterceptor>(() => _i302.LoggingInterceptor());
    gh.lazySingleton<_i804.TokenStorage>(() => _i804.TokenStorage());
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectionModule.firebaseAuth);
    gh.singleton<_i804.AuthInterceptor>(
        () => _i804.AuthInterceptor(gh<_i804.TokenStorage>()));
    gh.factory<_i766.LanguageCubit>(
        () => _i766.LanguageCubit(gh<_i264.Locale>()));
    gh.singleton<_i361.Dio>(() => apiModule.dio(
          gh<_i804.AuthInterceptor>(),
          gh<_i804.LoggingInterceptor>(),
        ));
    gh.factory<_i303.NetworkInfoImpl>(
        () => injectionModule.networkInfoImpl(gh<_i161.InternetConnection>()));
    gh.factory<_i303.NetworkInfo>(
        () => injectionModule.networkInfo(gh<_i303.NetworkInfoImpl>()));
    gh.factory<_i165.OrdersApi>(
        () => injectionModule.ordersApi(gh<_i361.Dio>()));
    gh.factory<_i715.DocsApi>(() => injectionModule.docsApi(gh<_i361.Dio>()));
    gh.factory<_i808.OrdersRepo>(
        () => _i450.OrdersRepoImpl(gh<_i165.OrdersApi>()));
    gh.factory<_i672.DocsRepo>(
        () => _i430.DocsRepoImpl(postsApi: gh<_i715.DocsApi>()));
    gh.factory<_i802.OrdersUseCases>(
        () => _i802.OrdersUseCases(gh<_i808.OrdersRepo>()));
    gh.lazySingleton<_i689.DocsUseCase>(
        () => _i689.DocsUseCase(ordersRepo: gh<_i672.DocsRepo>()));
    gh.factory<_i189.OrdersBloc>(
        () => _i189.OrdersBloc(gh<_i802.OrdersUseCases>()));
    gh.factory<_i395.DocsBloc>(
        () => _i395.DocsBloc(docsUseCase: gh<_i689.DocsUseCase>()));
    return this;
  }
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$ApiModule extends _i804.ApiModule {}
