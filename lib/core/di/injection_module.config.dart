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
import 'package:mubin_orders/core/di/api_module.dart' as _i1053;
import 'package:mubin_orders/core/di/injection_module.dart' as _i226;
import 'package:mubin_orders/core/network/dio_client.dart' as _i410;
import 'package:mubin_orders/core/networking/interceptors/logging_interceptor.dart'
    as _i1040;
import 'package:mubin_orders/core/networking/network_info.dart' as _i80;
import 'package:mubin_orders/core/services/firebase_messaging_service.dart'
    as _i518;
import 'package:mubin_orders/features/auth/forgot_password/data/repo/forgot_password_repo_impl.dart'
    as _i278;
import 'package:mubin_orders/features/auth/forgot_password/domain/repo/forgot_pass_repo.dart'
    as _i337;
import 'package:mubin_orders/features/auth/forgot_password/domain/usecases/send_pass_reset_email_usecase.dart'
    as _i373;
import 'package:mubin_orders/features/auth/forgot_password/present/bloc/forgot_pass_bloc.dart'
    as _i341;
import 'package:mubin_orders/features/auth/main/data/datasources/main_api.dart'
    as _i346;
import 'package:mubin_orders/features/auth/main/data/repo/main_repo_impl.dart'
    as _i734;
import 'package:mubin_orders/features/auth/main/domain/repo/main_repo.dart'
    as _i276;
import 'package:mubin_orders/features/auth/main/domain/usecases/main_use_casees.dart'
    as _i73;
import 'package:mubin_orders/features/auth/main/present/bloc/main_bloc.dart'
    as _i634;
import 'package:mubin_orders/features/auth/sign_in/data/datasources/sign_in_api.dart'
    as _i63;
import 'package:mubin_orders/features/auth/sign_in/data/repo/sign_in_repo_impl.dart'
    as _i967;
import 'package:mubin_orders/features/auth/sign_in/domain/repo/sign_in_repo.dart'
    as _i343;
import 'package:mubin_orders/features/auth/sign_in/domain/use_cases/sign_in_use_cases.dart'
    as _i158;
import 'package:mubin_orders/features/auth/sign_in/present/bloc/sign_in_bloc.dart'
    as _i87;
import 'package:mubin_orders/features/auth/sign_up/data/data_sources/sign_up_api.dart'
    as _i388;
import 'package:mubin_orders/features/auth/sign_up/data/sign_up_repo.dart'
    as _i345;
import 'package:mubin_orders/features/auth/sign_up/domain/repo/sign_up_repo.dart'
    as _i1019;
import 'package:mubin_orders/features/auth/sign_up/domain/use_cases/sign_up_use_cases.dart'
    as _i704;
import 'package:mubin_orders/features/auth/sign_up/present/bloc/sign_up_bloc.dart'
    as _i885;
import 'package:mubin_orders/features/docs/data/datasources/docs_api.dart'
    as _i431;
import 'package:mubin_orders/features/docs/data/repo_impl/docs_repo_impl.dart'
    as _i2;
import 'package:mubin_orders/features/docs/domain/repo/docs_repo.dart' as _i242;
import 'package:mubin_orders/features/docs/domain/usecases/docs_use_cases.dart'
    as _i221;
import 'package:mubin_orders/features/docs/present/blocs/bloc/docs_bloc.dart'
    as _i117;
import 'package:mubin_orders/features/home/data/datasources/home_remote_datasource.dart'
    as _i340;
import 'package:mubin_orders/features/home/data/repo_impl/home_repo_impl.dart'
    as _i270;
import 'package:mubin_orders/features/home/domain/repo/home_repo.dart'
    as _i1033;
import 'package:mubin_orders/features/home/domain/usecases/get_home_summary.dart'
    as _i978;
import 'package:mubin_orders/features/language/bloc/language_bloc.dart' as _i82;
import 'package:mubin_orders/features/notifications/data/datasources/notifications_api.dart'
    as _i392;
import 'package:mubin_orders/features/notifications/data/repo_impl/notifications_repo_impl.dart'
    as _i838;
import 'package:mubin_orders/features/notifications/domain/repo/notifications_repo.dart'
    as _i840;
import 'package:mubin_orders/features/notifications/domain/usecases/notifications_use_cases.dart'
    as _i230;
import 'package:mubin_orders/features/notifications/present/bloc/notifications_bloc.dart'
    as _i399;
import 'package:mubin_orders/features/onboarding/data/datasources/onboarding_local_data_source.dart'
    as _i919;
import 'package:mubin_orders/features/onboarding/data/repo/onboarding_repo_impl.dart'
    as _i292;
import 'package:mubin_orders/features/onboarding/domain/repo/onboarding_rep.dart'
    as _i760;
import 'package:mubin_orders/features/onboarding/present/bloc/onboarding_bloc.dart'
    as _i140;
import 'package:mubin_orders/features/orders/data/datasources/orders_api.dart'
    as _i442;
import 'package:mubin_orders/features/orders/data/repo_impl/orders_repo_impl.dart'
    as _i644;
import 'package:mubin_orders/features/orders/domain/repo/orders_repo.dart'
    as _i586;
import 'package:mubin_orders/features/orders/domain/usecases/orders_use_cases.dart'
    as _i623;
import 'package:mubin_orders/features/orders/present/bloc/orders_bloc.dart'
    as _i45;
import 'package:mubin_orders/features/theme/blocs/theme_bloc.dart' as _i30;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    final apiModule = _$ApiModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.factory<_i82.LanguageBloc>(() => _i82.LanguageBloc());
    gh.factory<_i30.ThemeBloc>(() => _i30.ThemeBloc());
    gh.singleton<_i1053.LoggingInterceptor>(() => _i1053.LoggingInterceptor());
    gh.singleton<_i410.DioClient>(() => _i410.DioClient());
    gh.singleton<_i1040.LoggingInterceptor>(() => _i1040.LoggingInterceptor());
    gh.lazySingleton<_i1053.TokenStorage>(() => _i1053.TokenStorage());
    gh.lazySingleton<_i161.InternetConnection>(
        () => injectionModule.connectionChecker);
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectionModule.firebaseAuth);
    gh.lazySingleton<_i892.FirebaseMessaging>(
        () => injectionModule.firebaseMessaging);
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => injectionModule.secureStorage);
    gh.lazySingleton<_i518.FirebaseMessagingService>(
        () => _i518.FirebaseMessagingService());
    gh.lazySingleton<_i340.HomeRemoteDataSource>(
        () => _i340.HomeRemoteDataSource());
    gh.singleton<_i1053.AuthInterceptor>(
        () => _i1053.AuthInterceptor(gh<_i1053.TokenStorage>()));
    gh.lazySingleton<_i337.ForgotPassRepo>(
        () => _i278.ForgotPasswordRepositoryImpl(gh<_i59.FirebaseAuth>()));
    gh.singleton<_i361.Dio>(() => apiModule.dio(
          gh<_i1053.AuthInterceptor>(),
          gh<_i1053.LoggingInterceptor>(),
        ));
    gh.factory<_i373.SendPassResetEmailUseCase>(
        () => _i373.SendPassResetEmailUseCase(gh<_i337.ForgotPassRepo>()));
    gh.factory<_i346.MainApi>(() => _i346.MainApi(
          gh<_i361.Dio>(),
          baseUrl: gh<String>(),
        ));
    gh.factory<_i431.DocsApi>(() => _i431.DocsApi(
          gh<_i361.Dio>(),
          baseUrl: gh<String>(),
        ));
    gh.factory<_i392.NotificationsApi>(() => _i392.NotificationsApi(
          gh<_i361.Dio>(),
          baseUrl: gh<String>(),
        ));
    gh.factory<_i442.OrdersApi>(() => _i442.OrdersApi(
          gh<_i361.Dio>(),
          baseUrl: gh<String>(),
        ));
    gh.lazySingleton<_i919.OnboardingLocalDataSource>(() =>
        _i919.OnboardingLocalDataSourceImpl(
            prefs: gh<_i460.SharedPreferences>()));
    gh.factory<_i80.NetworkInfo>(() => _i80.NetworkInfoImpl(
        connectionChecker: gh<_i161.InternetConnection>()));
    gh.factoryParam<_i63.SignInApi, String?, dynamic>((
      baseUrl,
      _,
    ) =>
        _i63.SignInApi(
          gh<_i361.Dio>(),
          baseUrl: baseUrl,
        ));
    gh.factory<_i840.NotificationsRepo>(
        () => _i838.NotificationsRepoImpl(gh<_i392.NotificationsApi>()));
    gh.lazySingleton<_i1033.HomeRepo>(
        () => _i270.HomeRepoImpl(gh<_i340.HomeRemoteDataSource>()));
    gh.factory<_i242.DocsRepo>(
        () => _i2.DocsRepoImpl(postsApi: gh<_i431.DocsApi>()));
    gh.factory<_i276.MainRepo>(
        () => _i734.MainRepoImpl(mainApi: gh<_i346.MainApi>()));
    gh.lazySingleton<_i343.SignInRepo>(() => _i967.SignInRepoImpl(
          gh<_i59.FirebaseAuth>(),
          gh<_i892.FirebaseMessaging>(),
          gh<_i63.SignInApi>(),
        ));
    gh.lazySingleton<_i158.SignInUseCases>(() => _i158.SignInUseCases(
          gh<_i343.SignInRepo>(),
          gh<_i59.FirebaseAuth>(),
        ));
    gh.factory<_i341.ForgotPassBloc>(
        () => _i341.ForgotPassBloc(gh<_i373.SendPassResetEmailUseCase>()));
    gh.factory<_i230.NotificationsUseCases>(
        () => _i230.NotificationsUseCases(gh<_i840.NotificationsRepo>()));
    gh.lazySingleton<_i388.SignUpApi>(() => _i388.SignUpApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i73.MainUseCasess>(
        () => _i73.MainUseCasess(mainRepo: gh<_i276.MainRepo>()));
    gh.factory<_i586.OrdersRepo>(
        () => _i644.OrdersRepoImpl(gh<_i442.OrdersApi>()));
    gh.lazySingleton<_i760.OnboardingRepo>(() => _i292.OnboardingRepoImpl(
        localDataSource: gh<_i919.OnboardingLocalDataSource>()));
    gh.factory<_i87.SignInBloc>(
        () => _i87.SignInBloc(signInUseCases: gh<_i158.SignInUseCases>()));
    gh.factory<_i978.GetHomeSummary>(
        () => _i978.GetHomeSummary(gh<_i1033.HomeRepo>()));
    gh.lazySingleton<_i221.DocsUseCase>(
        () => _i221.DocsUseCase(ordersRepo: gh<_i242.DocsRepo>()));
    gh.factory<_i399.NotificationsBloc>(
        () => _i399.NotificationsBloc(gh<_i230.NotificationsUseCases>()));
    gh.factory<_i117.DocsBloc>(
        () => _i117.DocsBloc(docsUseCase: gh<_i221.DocsUseCase>()));
    gh.factory<_i1019.SignUpRepo>(
        () => _i345.SignUpRepoImpl(gh<_i388.SignUpApi>()));
    gh.factory<_i634.MainBloc>(() => _i634.MainBloc(
          auth: gh<_i59.FirebaseAuth>(),
          mainUseCasess: gh<_i73.MainUseCasess>(),
        ));
    gh.factory<_i140.OnboardingBloc>(
        () => _i140.OnboardingBloc(repo: gh<_i760.OnboardingRepo>()));
    gh.factory<_i623.OrdersUseCases>(
        () => _i623.OrdersUseCases(gh<_i586.OrdersRepo>()));
    gh.factory<_i45.OrdersBloc>(
        () => _i45.OrdersBloc(gh<_i623.OrdersUseCases>()));
    gh.lazySingleton<_i704.SignUpUseCases>(
        () => _i704.SignUpUseCasesImpl(gh<_i1019.SignUpRepo>()));
    gh.lazySingleton<_i885.SignUpBloc>(() => _i885.SignUpBloc(
          signUpUseCases: gh<_i704.SignUpUseCases>(),
          firebaseMessagingService: gh<_i518.FirebaseMessagingService>(),
        ));
    return this;
  }
}

class _$InjectionModule extends _i226.InjectionModule {}

class _$ApiModule extends _i1053.ApiModule {}
