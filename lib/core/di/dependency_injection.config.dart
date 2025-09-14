// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:storage_utils/storage_utils.dart' as _i939;

import '../../features/auth/sign_in/data/repositories/sign_in_repository_impl.dart'
    as _i543;
import '../../features/auth/sign_in/domain/repositories/sign_in_repository.dart'
    as _i147;
import '../../features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart'
    as _i941;
import '../../features/auth/sign_up/data/data_sources/sign_up_api.dart'
    as _i552;
import '../../features/auth/sign_up/data/sign_up_repo.dart' as _i534;
import '../../features/auth/sign_up/domain/repo/sign_up_repo.dart' as _i871;
import '../../features/auth/sign_up/domain/use_cases/sign_up_use_cases.dart'
    as _i251;
import '../../features/auth/sign_up/present/bloc/sign_up_bloc.dart' as _i226;
import '../../features/docs/data/datasources/docs_api.dart' as _i715;
import '../../features/docs/data/repo_impl/docs_repo_impl.dart' as _i430;
import '../../features/docs/domain/repo/docs_repo.dart' as _i672;
import '../../features/docs/domain/usecases/docs_use_cases.dart' as _i689;
import '../../features/docs/present/blocs/bloc/docs_bloc.dart' as _i395;
import '../../features/home/data/datasources/home_remote_datasource.dart'
    as _i278;
import '../../features/home/data/repo_impl/home_repo_impl.dart' as _i886;
import '../../features/home/domain/repo/home_repo.dart' as _i280;
import '../../features/home/domain/usecases/get_home_summary.dart' as _i817;
import '../../features/main/data/datasources/main_api.dart' as _i942;
import '../../features/main/data/repo_impl/main_repo_impl.dart' as _i880;
import '../../features/main/domain/repo/main_repo.dart' as _i587;
import '../../features/main/domain/usecases/main_use_casees.dart' as _i278;
import '../../features/main/present/bloc/main_bloc.dart' as _i924;
import '../../features/notifications/data/datasources/notifications_api.dart'
    as _i352;
import '../../features/notifications/data/repo_impl/notifications_repo_impl.dart'
    as _i666;
import '../../features/notifications/domain/repo/notifications_repo.dart'
    as _i967;
import '../../features/notifications/domain/usecases/notifications_use_cases.dart'
    as _i139;
import '../../features/notifications/present/bloc/notifications_bloc.dart'
    as _i781;
import '../../features/orders/data/datasources/orders_api.dart' as _i165;
import '../../features/orders/data/repo_impl/orders_repo_impl.dart' as _i450;
import '../../features/orders/domain/repo/orders_repo.dart' as _i808;
import '../../features/orders/domain/usecases/orders_use_cases.dart' as _i802;
import '../../features/orders/present/bloc/orders_bloc.dart' as _i189;
import '../../features/theme/blocs/theme_bloc.dart' as _i307;
import '../networking/interceptors/logging_interceptor.dart' as _i302;
import '../networking/network_info.dart' as _i303;
import '../services/firebase_messaging_service.dart' as _i910;
import 'api_module.dart' as _i804;
import 'injection_module.dart' as _i212;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
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
    gh.factory<_i307.ThemeBloc>(() => _i307.ThemeBloc());
    gh.singleton<_i804.LoggingInterceptor>(() => _i804.LoggingInterceptor());
    gh.singleton<_i302.LoggingInterceptor>(() => _i302.LoggingInterceptor());
    gh.lazySingleton<_i804.TokenStorage>(() => _i804.TokenStorage());
    gh.lazySingleton<_i161.InternetConnection>(
        () => injectionModule.connectionChecker);
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectionModule.firebaseAuth);
    gh.lazySingleton<_i939.PrefsStorageService>(
        () => injectionModule.prefsStorageService);
    gh.lazySingleton<_i939.SecureStorageService>(
        () => injectionModule.secureStorageService);
    gh.lazySingleton<_i116.GoogleSignIn>(() => injectionModule.googleSignIn);
    gh.lazySingleton<_i910.FirebaseMessagingService>(
        () => _i910.FirebaseMessagingService());
    gh.lazySingleton<_i278.HomeRemoteDataSource>(
        () => _i278.HomeRemoteDataSource());
    gh.singleton<_i804.AuthInterceptor>(
        () => _i804.AuthInterceptor(gh<_i804.TokenStorage>()));
    gh.factory<_i587.MainRepo>(
        () => _i880.MainRepoImpl(mainApi: gh<_i942.MainApi>()));
    gh.singleton<_i361.Dio>(() => apiModule.dio(
          gh<_i804.AuthInterceptor>(),
          gh<_i804.LoggingInterceptor>(),
        ));
    gh.lazySingleton<_i147.SignInRepository>(() => _i543.SignInRepositoryImpl(
          gh<_i59.FirebaseAuth>(),
          gh<_i116.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i280.HomeRepo>(
        () => _i886.HomeRepoImpl(gh<_i278.HomeRemoteDataSource>()));
    gh.factory<_i303.NetworkInfoImpl>(
        () => injectionModule.networkInfoImpl(gh<_i161.InternetConnection>()));
    gh.factory<_i941.SignInUseCases>(
        () => _i941.SignInUseCases(gh<_i147.SignInRepository>()));
    gh.factory<_i303.NetworkInfo>(
        () => injectionModule.networkInfo(gh<_i303.NetworkInfoImpl>()));
    gh.lazySingleton<_i552.SignUpApi>(() => _i552.SignUpApi(gh<_i361.Dio>()));
    gh.factory<_i165.OrdersApi>(
        () => injectionModule.ordersApi(gh<_i361.Dio>()));
    gh.factory<_i715.DocsApi>(() => injectionModule.docsApi(gh<_i361.Dio>()));
    gh.factory<_i352.NotificationsApi>(
        () => injectionModule.notificationsApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i278.MainUseCasess>(
        () => _i278.MainUseCasess(mainRepo: gh<_i587.MainRepo>()));
    gh.factory<_i808.OrdersRepo>(
        () => _i450.OrdersRepoImpl(gh<_i165.OrdersApi>()));
    gh.factory<_i924.MainBloc>(() => _i924.MainBloc(
          auth: gh<_i59.FirebaseAuth>(),
          mainUseCasess: gh<_i278.MainUseCasess>(),
        ));
    gh.factory<_i817.GetHomeSummary>(
        () => _i817.GetHomeSummary(gh<_i280.HomeRepo>()));
    gh.factory<_i967.NotificationsRepo>(
        () => _i666.NotificationsRepoImpl(gh<_i352.NotificationsApi>()));
    gh.factory<_i672.DocsRepo>(
        () => _i430.DocsRepoImpl(postsApi: gh<_i715.DocsApi>()));
    gh.factory<_i871.SignUpRepo>(
        () => _i534.SignUpRepoImpl(gh<_i552.SignUpApi>()));
    gh.factory<_i139.NotificationsUseCases>(
        () => _i139.NotificationsUseCases(gh<_i967.NotificationsRepo>()));
    gh.factory<_i802.OrdersUseCases>(
        () => _i802.OrdersUseCases(gh<_i808.OrdersRepo>()));
    gh.lazySingleton<_i689.DocsUseCase>(
        () => _i689.DocsUseCase(ordersRepo: gh<_i672.DocsRepo>()));
    gh.factory<_i781.NotificationsBloc>(
        () => _i781.NotificationsBloc(gh<_i139.NotificationsUseCases>()));
    gh.factory<_i189.OrdersBloc>(
        () => _i189.OrdersBloc(gh<_i802.OrdersUseCases>()));
    gh.lazySingleton<_i251.SignUpUseCases>(
        () => _i251.SignUpUseCasesImpl(gh<_i871.SignUpRepo>()));
    gh.factory<_i395.DocsBloc>(
        () => _i395.DocsBloc(docsUseCase: gh<_i689.DocsUseCase>()));
    gh.lazySingleton<_i226.SignUpBloc>(() => _i226.SignUpBloc(
          signUpUseCases: gh<_i251.SignUpUseCases>(),
          firebaseMessagingService: gh<_i910.FirebaseMessagingService>(),
        ));
    return this;
  }
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$ApiModule extends _i804.ApiModule {}
