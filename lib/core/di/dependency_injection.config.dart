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
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:storage_utils/storage_utils.dart' as _i939;

import '../../features/auth/forgot_password/data/repo/forgot_password_repo_impl.dart'
    as _i877;
import '../../features/auth/forgot_password/domain/repo/forgot_password_repository.dart'
    as _i899;
import '../../features/auth/forgot_password/domain/usecases/send_password_reset_email_usecase.dart'
    as _i188;
import '../../features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart'
    as _i154;
import '../../features/auth/main/data/datasources/main_api.dart' as _i975;
import '../../features/auth/main/data/repo/main_repo_impl.dart' as _i330;
import '../../features/auth/main/domain/repo/main_repo.dart' as _i290;
import '../../features/auth/main/domain/usecases/main_use_casees.dart'
    as _i1008;
import '../../features/auth/main/present/bloc/main_bloc.dart' as _i650;
import '../../features/auth/sign_in/data/datasources/sign_in_api.dart' as _i804;
import '../../features/auth/sign_in/data/models/remember_me_preferences.dart'
    as _i938;
import '../../features/auth/sign_in/data/repo/sign_in_repo_impl.dart' as _i218;
import '../../features/auth/sign_in/domain/repo/sign_in_repo.dart' as _i305;
import '../../features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart'
    as _i941;
import '../../features/auth/sign_in/present/bloc/sign_in_bloc.dart' as _i665;
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
import '../network/dio_client.dart' as _i667;
import '../networking/interceptors/logging_interceptor.dart' as _i302;
import '../networking/network_info.dart' as _i303;
import '../services/firebase_messaging_service.dart' as _i910;
import '../storage/secure_storage_service.dart' as _i666;
import 'api_module.dart' as _i804;
import 'injection_module.dart' as _i212;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
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
  gh.factory<_i307.ThemeBloc>(() => _i307.ThemeBloc());
  gh.singleton<_i804.LoggingInterceptor>(() => _i804.LoggingInterceptor());
  gh.singleton<_i667.DioClient>(() => _i667.DioClient());
  gh.singleton<_i302.LoggingInterceptor>(() => _i302.LoggingInterceptor());
  gh.lazySingleton<_i804.TokenStorage>(() => _i804.TokenStorage());
  gh.lazySingleton<_i161.InternetConnection>(
      () => injectionModule.connectionChecker);
  gh.lazySingleton<_i939.PrefsStorageService>(
      () => injectionModule.prefsStorageService);
  gh.lazySingleton<_i938.RememberMePreferences>(
      () => injectionModule.rememberMePreferences);
  gh.lazySingleton<_i59.FirebaseAuth>(() => injectionModule.firebaseAuth);
  gh.lazySingleton<_i892.FirebaseMessaging>(
      () => injectionModule.firebaseMessaging);
  gh.lazySingleton<_i910.FirebaseMessagingService>(
      () => _i910.FirebaseMessagingService());
  gh.lazySingleton<_i278.HomeRemoteDataSource>(
      () => _i278.HomeRemoteDataSource());
  gh.singleton<_i804.AuthInterceptor>(
      () => _i804.AuthInterceptor(gh<_i804.TokenStorage>()));
  gh.lazySingleton<_i666.SecureStorageService>(
      () => _i666.SecureStorageServiceImpl());
  gh.singleton<_i361.Dio>(() => apiModule.dio(
        gh<_i804.AuthInterceptor>(),
        gh<_i804.LoggingInterceptor>(),
      ));
  gh.lazySingleton<_i899.ForgotPasswordRepository>(
      () => _i877.ForgotPasswordRepositoryImpl(gh<_i59.FirebaseAuth>()));
  gh.lazySingleton<_i305.SignInRepo>(() => _i218.SignInRepoImpl(
        gh<_i59.FirebaseAuth>(),
        gh<_i938.RememberMePreferences>(),
        gh<_i892.FirebaseMessaging>(),
        gh<_i666.SecureStorageService>(),
      ));
  gh.factoryParam<_i804.SignInApi, String?, dynamic>((
    baseUrl,
    _,
  ) =>
      _i804.SignInApi(
        gh<_i361.Dio>(),
        baseUrl: baseUrl,
      ));
  gh.lazySingleton<_i280.HomeRepo>(
      () => _i886.HomeRepoImpl(gh<_i278.HomeRemoteDataSource>()));
  gh.factory<_i303.NetworkInfoImpl>(
      () => injectionModule.networkInfoImpl(gh<_i161.InternetConnection>()));
  gh.factory<_i188.SendPasswordResetEmailUseCase>(() =>
      _i188.SendPasswordResetEmailUseCase(
          gh<_i899.ForgotPasswordRepository>()));
  gh.lazySingleton<_i941.SignInUseCases>(() => _i941.SignInUseCases(
        gh<_i305.SignInRepo>(),
        gh<_i59.FirebaseAuth>(),
      ));
  gh.factory<_i303.NetworkInfo>(
      () => injectionModule.networkInfo(gh<_i303.NetworkInfoImpl>()));
  gh.lazySingleton<_i975.MainApi>(() => apiModule.mainApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i552.SignUpApi>(() => _i552.SignUpApi(gh<_i361.Dio>()));
  gh.factory<_i165.OrdersApi>(() => injectionModule.ordersApi(gh<_i361.Dio>()));
  gh.factory<_i715.DocsApi>(() => injectionModule.docsApi(gh<_i361.Dio>()));
  gh.factory<_i352.NotificationsApi>(
      () => injectionModule.notificationsApi(gh<_i361.Dio>()));
  gh.factory<_i154.ForgotPasswordBloc>(() =>
      _i154.ForgotPasswordBloc(gh<_i188.SendPasswordResetEmailUseCase>()));
  gh.factory<_i808.OrdersRepo>(
      () => _i450.OrdersRepoImpl(gh<_i165.OrdersApi>()));
  gh.factory<_i665.SignInBloc>(
      () => _i665.SignInBloc(signInUseCases: gh<_i941.SignInUseCases>()));
  gh.factory<_i817.GetHomeSummary>(
      () => _i817.GetHomeSummary(gh<_i280.HomeRepo>()));
  gh.factory<_i967.NotificationsRepo>(
      () => _i666.NotificationsRepoImpl(gh<_i352.NotificationsApi>()));
  gh.factory<_i672.DocsRepo>(
      () => _i430.DocsRepoImpl(postsApi: gh<_i715.DocsApi>()));
  gh.factory<_i290.MainRepo>(
      () => _i330.MainRepoImpl(mainApi: gh<_i975.MainApi>()));
  gh.factory<_i871.SignUpRepo>(
      () => _i534.SignUpRepoImpl(gh<_i552.SignUpApi>()));
  gh.factory<_i139.NotificationsUseCases>(
      () => _i139.NotificationsUseCases(gh<_i967.NotificationsRepo>()));
  gh.factory<_i802.OrdersUseCases>(
      () => _i802.OrdersUseCases(gh<_i808.OrdersRepo>()));
  gh.lazySingleton<_i1008.MainUseCasess>(
      () => _i1008.MainUseCasess(mainRepo: gh<_i290.MainRepo>()));
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
  gh.factory<_i650.MainBloc>(() => _i650.MainBloc(
        auth: gh<_i59.FirebaseAuth>(),
        mainUseCasess: gh<_i1008.MainUseCasess>(),
      ));
  gh.lazySingleton<_i226.SignUpBloc>(() => _i226.SignUpBloc(
        signUpUseCases: gh<_i251.SignUpUseCases>(),
        firebaseMessagingService: gh<_i910.FirebaseMessagingService>(),
      ));
  return getIt;
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$ApiModule extends _i804.ApiModule {}
