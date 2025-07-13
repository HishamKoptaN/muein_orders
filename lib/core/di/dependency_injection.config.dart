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
import '../../features/main/data/datasources/main_api.dart' as _i942;
import '../../features/main/data/repo_impl/main_repo_impl.dart' as _i880;
import '../../features/main/domain/repo/main_repo.dart' as _i587;
import '../../features/main/domain/usecases/main_use_casees.dart' as _i278;
import '../../features/main/present/bloc/main_bloc.dart' as _i924;
import '../../features/orders/data/datasources/orders_api.dart' as _i165;
import '../../features/orders/data/repo_impl/orders_repo_impl.dart' as _i450;
import '../../features/orders/domain/repo/orders_repo.dart' as _i808;
import '../../features/orders/domain/usecases/orders_use_cases.dart' as _i802;
import '../../features/orders/present/bloc/orders_bloc.dart' as _i189;
import '../../features/sign_in/data/data_sources/sign_in_api.dart' as _i623;
import '../../features/sign_in/data/repo_imp/login_repo_impl.dart' as _i587;
import '../../features/sign_in/domain/repo/sign_in_repo.dart' as _i329;
import '../../features/sign_in/domain/use_cases/sign_in_use_cases.dart'
    as _i794;
import '../../features/sign_in/present/bloc/sign_in_bloc.dart' as _i1054;
import '../../features/theme_cubit/theme_cubit.dart' as _i979;
import '../networking/network_info.dart' as _i303;
import 'api_module.dart' as _i804;
import 'injection_module.dart' as _i212;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectionModule = _$InjectionModule();
  final apiModule = _$ApiModule();
  gh.factory<_i979.ThemeCubit>(() => _i979.ThemeCubit());
  gh.singleton<_i804.LoggingInterceptor>(() => _i804.LoggingInterceptor());
  gh.lazySingleton<_i804.TokenStorage>(() => _i804.TokenStorage());
  gh.lazySingleton<_i161.InternetConnection>(
      () => injectionModule.connectionChecker);
  gh.lazySingleton<_i59.FirebaseAuth>(() => injectionModule.firebaseAuth);
  gh.singleton<_i804.AuthInterceptor>(
      () => _i804.AuthInterceptor(gh<_i804.TokenStorage>()));
  gh.lazySingleton<_i623.SignInRemDataSrc>(
      () => injectionModule.loginRemDataSrc(gh<_i59.FirebaseAuth>()));
  gh.factory<_i766.LanguageCubit>(
      () => _i766.LanguageCubit(gh<_i264.Locale>()));
  gh.singleton<_i361.Dio>(() => apiModule.dio(
        gh<_i804.AuthInterceptor>(),
        gh<_i804.LoggingInterceptor>(),
      ));
  gh.lazySingleton<_i303.NetworkInfoImpl>(
      () => injectionModule.networkInfoImpl(gh<_i161.InternetConnection>()));
  gh.lazySingleton<_i303.NetworkInfo>(
      () => injectionModule.networkInfo(gh<_i303.NetworkInfoImpl>()));
  gh.lazySingleton<_i942.MainApi>(
      () => injectionModule.mainApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i623.SignInApi>(
      () => injectionModule.loginApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i165.OrdersApi>(
      () => injectionModule.ordersApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i715.DocsApi>(
      () => injectionModule.docsApi(gh<_i361.Dio>()));
  gh.factory<_i587.MainRepo>(
      () => _i880.MainRepoImpl(mainApi: gh<_i942.MainApi>()));
  gh.factory<_i808.OrdersRepo>(
      () => _i450.OrdersRepoImpl(gh<_i165.OrdersApi>()));
  gh.lazySingleton<_i329.SignInRepo>(() => _i587.SignInRepoImpl(
        loginRemDataSrc: gh<_i623.SignInRemDataSrc>(),
        loginApi: gh<_i623.SignInApi>(),
        networkInfo: gh<_i303.NetworkInfo>(),
        firebaseAuth: gh<_i59.FirebaseAuth>(),
      ));
  gh.factory<_i672.DocsRepo>(
      () => _i430.DocsRepoImpl(postsApi: gh<_i715.DocsApi>()));
  gh.lazySingleton<_i794.SignInUseCases>(
      () => _i794.SignInUseCases(signInRepo: gh<_i329.SignInRepo>()));
  gh.factory<_i802.OrdersUseCases>(
      () => _i802.OrdersUseCases(gh<_i808.OrdersRepo>()));
  gh.lazySingleton<_i278.MainUseCasess>(
      () => _i278.MainUseCasess(mainRepo: gh<_i587.MainRepo>()));
  gh.factory<_i924.MainBloc>(() => _i924.MainBloc(
        auth: gh<_i59.FirebaseAuth>(),
        mainUseCasess: gh<_i278.MainUseCasess>(),
      ));
  gh.lazySingleton<_i689.DocsUseCase>(
      () => _i689.DocsUseCase(ordersRepo: gh<_i672.DocsRepo>()));
  gh.lazySingleton<_i1054.SignInBloc>(() => _i1054.SignInBloc(
        signInUseCases: gh<_i794.SignInUseCases>(),
        firebaseAuth: gh<_i59.FirebaseAuth>(),
      ));
  gh.factory<_i189.OrdersBloc>(
      () => _i189.OrdersBloc(gh<_i802.OrdersUseCases>()));
  gh.factory<_i395.DocsBloc>(
      () => _i395.DocsBloc(docsUseCase: gh<_i689.DocsUseCase>()));
  return getIt;
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$ApiModule extends _i804.ApiModule {}
