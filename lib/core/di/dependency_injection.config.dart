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
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/auth/data/datasources/auth_api.dart' as _i976;
import '../../features/auth/auth/data/repo/auth_repo_impl.dart' as _i246;
import '../../features/auth/auth/domain/repo/auth_repo.dart' as _i610;
import '../../features/auth/auth/domain/usecases/auth_use_casees.dart' as _i151;
import '../../features/auth/auth/present/bloc/auth_bloc.dart' as _i99;
import '../../features/auth/forgot_password/data/repo/forgot_password_repo_impl.dart'
    as _i877;
import '../../features/auth/forgot_password/domain/repo/forgot_pass_repo.dart'
    as _i614;
import '../../features/auth/forgot_password/domain/usecases/send_pass_reset_email_usecase.dart'
    as _i629;
import '../../features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart'
    as _i154;
import '../../features/auth/sign_in/data/datasources/sign_in_api.dart' as _i804;
import '../../features/auth/sign_in/data/repo/sign_in_repo_impl.dart' as _i218;
import '../../features/auth/sign_in/domain/repo/sign_in_repo.dart' as _i305;
import '../../features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart'
    as _i941;
import '../../features/auth/sign_in/present/bloc/sign_in_bloc.dart' as _i665;
import '../../features/auth/sign_up/data/data_sources/sign_up_api.dart'
    as _i552;
import '../../features/auth/sign_up/data/repo_impl/sign_up_repo.dart' as _i17;
import '../../features/auth/sign_up/domain/repo/sign_up_repo.dart' as _i871;
import '../../features/auth/sign_up/domain/use_cases/sign_up_use_cases.dart'
    as _i251;
import '../../features/auth/sign_up/present/bloc/sign_up_bloc.dart' as _i226;
import '../../features/docs/data/datasources/local/drift/app_database.dart'
    as _i65;
import '../../features/docs/data/datasources/remote_data_sr/docs_api.dart'
    as _i977;
import '../../features/docs/data/repo_impl/docs_repo_impl.dart' as _i430;
import '../../features/docs/data/repo_impl/local_docs_repo_impl.dart' as _i98;
import '../../features/docs/domain/repo/cached_docs_repo.dart' as _i46;
import '../../features/docs/domain/repo/docs_repo.dart' as _i672;
import '../../features/docs/domain/usecases/docs_use_cases.dart' as _i689;
import '../../features/docs/present/blocs/cached_doc/cached_doc_bloc.dart'
    as _i467;
import '../../features/home/data/datasources/home_api.dart' as _i11;
import '../../features/home/data/repo_impl/home_repo_impl.dart' as _i886;
import '../../features/home/domain/repo/home_repo.dart' as _i280;
import '../../features/home/domain/usecases/home_use_cases.dart' as _i583;
import '../../features/home/present/bloc/home_bloc.dart' as _i481;
import '../../features/language/bloc/language_bloc.dart' as _i724;
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
import '../../features/onboarding/present/bloc/onboarding_bloc.dart' as _i708;
import '../../features/orders/data/datasources/orders_api.dart' as _i165;
import '../../features/orders/data/repo_impl/orders_repo_impl.dart' as _i450;
import '../../features/orders/domain/repo/orders_repo.dart' as _i808;
import '../../features/orders/domain/usecases/orders_use_cases.dart' as _i802;
import '../../features/orders/present/bloc/orders_bloc.dart' as _i189;
import '../../features/profile/data/datasources/profile_api.dart' as _i191;
import '../../features/profile/data/repo/profile_repo_impl.dart' as _i256;
import '../../features/profile/domain/repo/profile_repo.dart' as _i364;
import '../../features/profile/domain/use_cases/use_cases.dart' as _i291;
import '../../features/profile/present/bloc/profile_bloc.dart' as _i475;
import '../../features/theme/blocs/theme_bloc.dart' as _i307;
import '../networking/network_info.dart' as _i303;
import 'api_module.dart' as _i804;
import 'injection_module.dart' as _i212;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectionModule = _$InjectionModule();
  final apiModule = _$ApiModule();
  await gh.factoryAsync<_i460.SharedPreferencesAsync>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i724.LanguageBloc>(() => _i724.LanguageBloc());
  gh.factory<_i708.OnboardingBloc>(() => _i708.OnboardingBloc());
  gh.factory<_i307.ThemeBloc>(() => _i307.ThemeBloc());
  gh.singleton<_i804.LoggingInterceptor>(() => _i804.LoggingInterceptor());
  gh.lazySingleton<_i804.TokenStorage>(() => _i804.TokenStorage());
  gh.lazySingleton<_i161.InternetConnection>(
      () => injectionModule.connectionChecker);
  gh.lazySingleton<_i59.FirebaseAuth>(() => injectionModule.firebaseAuth);
  gh.lazySingleton<_i892.FirebaseMessaging>(
      () => injectionModule.firebaseMessaging);
  gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => injectionModule.secureStorage);
  gh.lazySingleton<_i65.AppDatabase>(() => _i65.AppDatabase());
  gh.lazySingleton<_i46.CachedDocsRepo>(
      () => _i98.LocalDocsRepoImpl(gh<_i65.AppDatabase>()));
  gh.lazySingleton<_i614.ForgotPassRepo>(
      () => _i877.ForgotPasswordRepositoryImpl(gh<_i59.FirebaseAuth>()));
  gh.singleton<_i804.AuthInterceptor>(
      () => _i804.AuthInterceptor(gh<_i804.TokenStorage>()));
  gh.factory<_i629.SendPassResetEmailUseCase>(
      () => _i629.SendPassResetEmailUseCase(gh<_i614.ForgotPassRepo>()));
  gh.factory<_i303.NetworkInfo>(() =>
      _i303.NetworkInfoImpl(connectionChecker: gh<_i161.InternetConnection>()));
  gh.factory<_i154.ForgotPassBloc>(
      () => _i154.ForgotPassBloc(gh<_i629.SendPassResetEmailUseCase>()));
  gh.singleton<_i361.Dio>(() => apiModule.dio(
        gh<_i804.AuthInterceptor>(),
        gh<_i804.LoggingInterceptor>(),
      ));
  gh.lazySingleton<_i552.SignUpApi>(() => _i552.SignUpApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i191.ProfileApi>(() => _i191.ProfileApi(gh<_i361.Dio>()));
  gh.factory<_i976.AuthApi>(() => _i976.AuthApi(gh<_i361.Dio>()));
  gh.factory<_i804.SignInApi>(() => _i804.SignInApi(gh<_i361.Dio>()));
  gh.factory<_i977.DocsApi>(() => _i977.DocsApi(gh<_i361.Dio>()));
  gh.factory<_i11.HomeApi>(() => _i11.HomeApi(gh<_i361.Dio>()));
  gh.factory<_i165.OrdersApi>(() => _i165.OrdersApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i871.SignUpRepo>(() => _i17.SignUpRepoImpl(
        gh<_i552.SignUpApi>(),
        gh<_i804.TokenStorage>(),
      ));
  gh.lazySingleton<_i610.AuthRepo>(() => _i246.AuthRepoImpl(
        gh<_i59.FirebaseAuth>(),
        gh<_i976.AuthApi>(),
      ));
  gh.lazySingleton<_i364.ProfileRepo>(
      () => _i256.ProfileRepoImpl(gh<_i191.ProfileApi>()));
  gh.factory<_i352.NotificationsApi>(() => _i352.NotificationsApi(
        gh<_i361.Dio>(),
        baseUrl: gh<String>(),
      ));
  gh.lazySingleton<_i305.SignInRepo>(() => _i218.SignInRepoImpl(
        gh<_i59.FirebaseAuth>(),
        gh<_i892.FirebaseMessaging>(),
        gh<_i804.SignInApi>(),
        gh<_i804.TokenStorage>(),
      ));
  gh.factory<_i291.ProfileUseCases>(
      () => _i291.ProfileUseCases(gh<_i364.ProfileRepo>()));
  gh.factory<_i967.NotificationsRepo>(
      () => _i666.NotificationsRepoImpl(gh<_i352.NotificationsApi>()));
  gh.lazySingleton<_i941.SignInUseCases>(() => _i941.SignInUseCases(
        gh<_i305.SignInRepo>(),
        gh<_i59.FirebaseAuth>(),
      ));
  gh.lazySingleton<_i151.AuthUseCase>(
      () => _i151.AuthUseCase(authRepo: gh<_i610.AuthRepo>()));
  gh.lazySingleton<_i665.SignInBloc>(
      () => _i665.SignInBloc(signInUseCases: gh<_i941.SignInUseCases>()));
  gh.lazySingleton<_i280.HomeRepo>(
      () => _i886.HomeRepoImpl(gh<_i11.HomeApi>()));
  gh.factory<_i583.HomeUseCases>(
      () => _i583.HomeUseCases(gh<_i280.HomeRepo>()));
  gh.factory<_i99.AuthBloc>(() => _i99.AuthBloc(gh<_i151.AuthUseCase>()));
  gh.factory<_i672.DocsRepo>(() => _i430.DocsRepoImpl(
        postsApi: gh<_i977.DocsApi>(),
        db: gh<_i65.AppDatabase>(),
      ));
  gh.lazySingleton<_i251.SignUpUseCases>(
      () => _i251.SignUpUseCasesImpl(gh<_i871.SignUpRepo>()));
  gh.factory<_i808.OrdersRepo>(
      () => _i450.OrdersRepoImpl(gh<_i165.OrdersApi>()));
  gh.factory<_i802.OrdersUseCases>(
      () => _i802.OrdersUseCases(gh<_i808.OrdersRepo>()));
  gh.factory<_i475.ProfileBloc>(
      () => _i475.ProfileBloc(gh<_i291.ProfileUseCases>()));
  gh.lazySingleton<_i689.DocsUseCase>(() => _i689.DocsUseCase(
        ordersRepo: gh<_i672.DocsRepo>(),
        cachedDocsRepo: gh<_i46.CachedDocsRepo>(),
      ));
  gh.factory<_i139.NotificationsUseCases>(
      () => _i139.NotificationsUseCases(gh<_i967.NotificationsRepo>()));
  gh.factory<_i467.CachedDocBloc>(
      () => _i467.CachedDocBloc(gh<_i689.DocsUseCase>()));
  gh.factory<_i481.HomeBloc>(
      () => _i481.HomeBloc(homeUseCases: gh<_i583.HomeUseCases>()));
  gh.factory<_i189.OrdersBloc>(() => _i189.OrdersBloc(
        gh<_i802.OrdersUseCases>(),
        gh<_i46.CachedDocsRepo>(),
      ));
  gh.lazySingleton<_i226.SignUpBloc>(
      () => _i226.SignUpBloc(signUpUseCases: gh<_i251.SignUpUseCases>()));
  gh.factory<_i781.NotificationsBloc>(
      () => _i781.NotificationsBloc(gh<_i139.NotificationsUseCases>()));
  return getIt;
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$ApiModule extends _i804.ApiModule {}
