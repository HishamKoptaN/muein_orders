// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i163;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../config/env.dart' as _i557;
import '../../features/auth/auth/data/datasources/auth_api.dart' as _i976;
import '../../features/auth/auth/data/repo/auth_repo_impl.dart' as _i246;
import '../../features/auth/auth/domain/repo/auth_repo.dart' as _i610;
import '../../features/auth/auth/domain/usecases/auth_use_casees.dart' as _i151;
import '../../features/auth/auth/present/bloc/auth_bloc.dart' as _i99;
import '../../features/auth/change_pass/data/repo/change_pass_repo_impl.dart'
    as _i901;
import '../../features/auth/change_pass/domain/repo/change_pass_repo.dart'
    as _i532;
import '../../features/auth/change_pass/domain/usecases/change_pass_usecase.dart'
    as _i146;
import '../../features/auth/change_pass/present/bloc/change_pass_bloc.dart'
    as _i494;
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
import '../../features/financial/data/datasources/financial_api.dart' as _i252;
import '../../features/financial/data/repo_impl/financial_repo_impl.dart'
    as _i58;
import '../../features/financial/domain/repo/orders_repo.dart' as _i1011;
import '../../features/financial/domain/usecases/financial_use_cases.dart'
    as _i868;
import '../../features/financial/present/blocs/bloc/expenses_bloc.dart'
    as _i660;
import '../../features/financial/present/blocs/financial_bloc/financial_bloc.dart'
    as _i468;
import '../../features/home_features/home/data/datasources/stats_api.dart'
    as _i598;
import '../../features/home_features/home/data/repo_impl/stats_repo_impl.dart'
    as _i312;
import '../../features/home_features/home/domain/repo/stats_repo.dart' as _i288;
import '../../features/home_features/home/domain/usecases/stats_use_cases.dart'
    as _i545;
import '../../features/home_features/home/present/bloc/stats_bloc.dart'
    as _i975;
import '../../features/instructions/present/bloc/instructions_bloc.dart'
    as _i197;
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
import '../../features/orders_features/cached_docs/data/datasources/local_data_src/drift/app_database.dart'
    as _i576;
import '../../features/orders_features/cached_docs/data/datasources/local_data_src/drift/daos/items_dao.dart'
    as _i249;
import '../../features/orders_features/cached_docs/data/repo_impl/cached_docs_repo_impl.dart'
    as _i1022;
import '../../features/orders_features/cached_docs/domain/repo/cached_docs_repo.dart'
    as _i576;
import '../../features/orders_features/cached_docs/domain/usecases/cached_docs_use_cases.dart'
    as _i945;
import '../../features/orders_features/cached_docs/present/bloc/cached_doc/cached_doc_bloc.dart'
    as _i912;
import '../../features/orders_features/cached_docs/present/bloc/location_picker_bloc/location_picker_bloc.dart'
    as _i711;
import '../../features/orders_features/docs/data/datasources/remote_data_sr/docs_api.dart'
    as _i128;
import '../../features/orders_features/docs/data/repo_impl/docs_repo_impl.dart'
    as _i807;
import '../../features/orders_features/docs/domain/repo/docs_repo.dart'
    as _i744;
import '../../features/orders_features/docs/domain/usecases/docs_use_cases.dart'
    as _i332;
import '../../features/orders_features/docs/present/blocs/docs_bloc/docs_bloc.dart'
    as _i396;
import '../../features/orders_features/orders/data/datasources/orders_api.dart'
    as _i890;
import '../../features/orders_features/orders/data/repo_impl/orders_repo_impl.dart'
    as _i588;
import '../../features/orders_features/orders/domain/repo/orders_repo.dart'
    as _i84;
import '../../features/orders_features/orders/domain/usecases/orders_use_cases.dart'
    as _i968;
import '../../features/orders_features/orders/domain/usecases/watch_doc_use_case.dart'
    as _i281;
import '../../features/orders_features/orders/present/bloc/orders_bloc.dart'
    as _i106;
import '../../features/orders_features/salla_orders_items/data/datasources/order_items_api.dart'
    as _i170;
import '../../features/orders_features/salla_orders_items/data/repo_impl/order_items_repo_impl.dart'
    as _i58;
import '../../features/orders_features/salla_orders_items/domain/repo/order_items_repo.dart'
    as _i624;
import '../../features/orders_features/salla_orders_items/domain/usecases/order_items_use_cases.dart'
    as _i812;
import '../../features/orders_features/salla_orders_items/present/bloc/order_items_bloc.dart'
    as _i677;
import '../../features/profile/data/datasources/profile_api.dart' as _i191;
import '../../features/profile/data/repo/profile_repo_impl.dart' as _i256;
import '../../features/profile/domain/repo/profile_repo.dart' as _i364;
import '../../features/profile/domain/use_cases/profile_use_cases.dart'
    as _i995;
import '../../features/profile/present/bloc/profile_bloc.dart' as _i475;
import '../../features/s3/data/data_sources/s3_api.dart' as _i335;
import '../../features/s3/data/repo/s3_repo.dart' as _i1;
import '../../features/s3/domain/repo_impl/s3_repo_impl.dart' as _i758;
import '../blocs/theme_bloc.dart' as _i725;
import '../language/bloc/language_bloc.dart' as _i48;
import '../networking/network_info.dart' as _i303;
import '../performance/cache_strategy.dart' as _i46;
import '../utils/app_file_manager.dart' as _i246;
import '../utils/background/workmanager_initializer.dart' as _i45;
import '../utils/services/auth_storage_service.dart' as _i566;
import '../utils/services/firebase_messaging/firebase_messaging_service.dart'
    as _i608;
import '../utils/services/notification_manager.dart' as _i749;
import '../utils/services/token_service.dart' as _i1052;
import 'dio/dio_module.dart' as _i374;
import 'dio/Interceptor.dart' as _i510;
import 'dio/user_module.dart' as _i433;
import 'injection_module.dart' as _i212;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  final userModule = _$UserModule();
  final dioModule = _$DioModule();
  await gh.factoryAsync<_i460.SharedPreferencesAsync>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i566.AuthStorageService>(() => _i566.AuthStorageService());
  gh.singleton<_i725.ThemeBloc>(() => _i725.ThemeBloc());
  gh.singleton<_i510.AuthInterceptor>(() => _i510.AuthInterceptor());
  gh.singleton<_i510.LoggingInterceptor>(() => _i510.LoggingInterceptor());
  gh.singleton<_i557.Env>(() => userModule.config);
  gh.singleton<_i161.InternetConnection>(
    () => injectionModule.connectionChecker,
  );
  gh.singleton<_i163.FlutterLocalNotificationsPlugin>(
    () => injectionModule.notificationsPlugin,
  );
  gh.singleton<_i59.FirebaseAuth>(() => injectionModule.firebaseAuth);
  gh.singleton<_i892.FirebaseMessaging>(
    () => injectionModule.firebaseMessaging,
  );
  gh.singleton<_i558.FlutterSecureStorage>(() => injectionModule.secureStorage);
  gh.singleton<Duration>(() => injectionModule.cacheDefaultTtl);
  gh.singleton<_i48.LanguageBloc>(() => _i48.LanguageBloc());
  gh.singleton<_i46.OrdersFilterCache>(() => _i46.OrdersFilterCache());
  gh.singleton<_i246.AppFileManager>(() => _i246.AppFileManager());
  gh.singleton<_i45.WorkManagerInitializer>(
    () => _i45.WorkManagerInitializer(),
  );
  gh.singleton<_i608.FirebaseMessagingService>(
    () => _i608.FirebaseMessagingService(),
  );
  gh.singleton<_i197.InstructionsBloc>(() => _i197.InstructionsBloc());
  gh.lazySingleton<_i576.AppDatabase>(() => _i576.AppDatabase());
  gh.singleton<_i84.OrdersRepo>(() => _i588.OrdersRepoImpl());
  gh.lazySingleton<_i249.ItemsDao>(
    () => _i249.ItemsDao(gh<_i576.AppDatabase>()),
  );
  gh.singleton<_i361.Dio>(() => dioModule.s3Dio(), instanceName: 's3Dio');
  gh.singleton<_i361.Dio>(
    () => dioModule.dio(
      gh<_i510.AuthInterceptor>(),
      gh<_i510.LoggingInterceptor>(),
    ),
  );
  gh.singleton<_i361.Dio>(
    () => dioModule.authDio(
      gh<_i510.AuthInterceptor>(),
      gh<_i510.LoggingInterceptor>(),
    ),
    instanceName: 'authDio',
  );
  gh.singleton<_i968.OrdersUseCases>(
    () => _i968.OrdersUseCases(gh<_i84.OrdersRepo>()),
  );
  gh.lazySingleton<_i1.S3Repo>(
    () => _i758.S3RepoImpl(gh<_i361.Dio>(instanceName: 's3Dio')),
  );
  gh.singleton<_i976.AuthApi>(
    () => _i976.AuthApi(gh<_i361.Dio>(instanceName: 'authDio')),
  );
  gh.lazySingleton<_i804.SignInApi>(
    () => _i804.SignInApi(gh<_i361.Dio>(instanceName: 'authDio')),
  );
  gh.lazySingleton<_i552.SignUpApi>(
    () => _i552.SignUpApi(gh<_i361.Dio>(instanceName: 'authDio')),
  );
  gh.lazySingleton<_i749.NotificationManager>(
    () =>
        _i749.NotificationManager(gh<_i163.FlutterLocalNotificationsPlugin>()),
  );
  gh.singleton<_i46.CacheStrategy<dynamic, dynamic>>(
    () => _i46.CacheStrategy<dynamic, dynamic>(defaultTtl: gh<Duration>()),
  );
  gh.lazySingleton<_i614.ForgotPassRepo>(
    () => _i877.ForgotPasswordRepositoryImpl(gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i106.OrdersBloc>(
    () => _i106.OrdersBloc(gh<_i968.OrdersUseCases>()),
  );
  gh.singleton<_i281.WatchDocUseCase>(
    () => _i281.WatchDocUseCase(gh<_i576.AppDatabase>()),
  );
  gh.singleton<_i303.NetworkInfo>(
    () => _i303.NetworkInfoImpl(
      connectionChecker: gh<_i161.InternetConnection>(),
    ),
  );
  gh.lazySingleton<_i1052.TokenService>(
    () => _i1052.TokenService(gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i532.ChangePassRepo>(
    () => _i901.ChangePassRepositoryImpl(gh<_i59.FirebaseAuth>()),
  );
  gh.singleton<_i576.CachedDocsRepo>(
    () => _i1022.CachedDocsRepoImpl(gh<_i576.AppDatabase>()),
  );
  gh.lazySingleton<_i128.DocsApi>(() => _i128.DocsApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i191.ProfileApi>(() => _i191.ProfileApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i335.S3Api>(() => _i335.S3Api(gh<_i361.Dio>()));
  gh.singleton<_i252.FinancialApi>(() => _i252.FinancialApi(gh<_i361.Dio>()));
  gh.singleton<_i598.StatsApi>(() => _i598.StatsApi(gh<_i361.Dio>()));
  gh.singleton<_i352.NotificationsApi>(
    () => _i352.NotificationsApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i890.OrdersApi>(() => _i890.OrdersApi(gh<_i361.Dio>()));
  gh.singleton<_i170.OrderItemsApi>(() => _i170.OrderItemsApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i744.DocsRepo>(
    () => _i807.DocsRepoImpl(
      docsApi: gh<_i128.DocsApi>(),
      db: gh<_i576.AppDatabase>(),
      s3Repo: gh<_i1.S3Repo>(),
    ),
  );
  gh.lazySingleton<_i629.SendPassResetEmailUseCase>(
    () => _i629.SendPassResetEmailUseCase(gh<_i614.ForgotPassRepo>()),
  );
  gh.singleton<_i945.CachedDocsUseCases>(
    () => _i945.CachedDocsUseCases(
      docsRepo: gh<_i744.DocsRepo>(),
      cachedDocsRepo: gh<_i576.CachedDocsRepo>(),
      fileManager: gh<_i246.AppFileManager>(),
    ),
  );
  gh.lazySingleton<_i871.SignUpRepo>(
    () => _i17.SignUpRepoImpl(gh<_i552.SignUpApi>()),
  );
  gh.lazySingleton<_i364.ProfileRepo>(
    () =>
        _i256.ProfileRepoImpl(gh<_i191.ProfileApi>(), gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i146.SendPassResetEmailUseCase>(
    () => _i146.SendPassResetEmailUseCase(gh<_i532.ChangePassRepo>()),
  );
  gh.lazySingleton<_i711.LocationPickerBloc>(
    () => _i711.LocationPickerBloc(gh<_i945.CachedDocsUseCases>()),
  );
  gh.singleton<_i624.OrderItemsRepo>(
    () =>
        _i58.OrdersRepoImpl(gh<_i170.OrderItemsApi>(), gh<_i576.AppDatabase>()),
  );
  gh.singleton<_i610.AuthRepo>(
    () => _i246.AuthRepoImpl(
      gh<_i59.FirebaseAuth>(),
      gh<_i976.AuthApi>(),
      gh<_i1052.TokenService>(),
      gh<_i566.AuthStorageService>(),
    ),
  );
  gh.lazySingleton<_i251.SignUpUseCases>(
    () => _i251.SignUpUseCasesImpl(gh<_i871.SignUpRepo>()),
  );
  gh.singleton<_i151.AuthUseCases>(
    () => _i151.AuthUseCases(authRepo: gh<_i610.AuthRepo>()),
  );
  gh.lazySingleton<_i288.StatsRepo>(
    () => _i312.StatsRepoImpl(gh<_i598.StatsApi>()),
  );
  gh.lazySingleton<_i912.CachedDocBloc>(
    () => _i912.CachedDocBloc(
      gh<_i945.CachedDocsUseCases>(),
      gh<_i246.AppFileManager>(),
    ),
  );
  gh.lazySingleton<_i305.SignInRepo>(
    () => _i218.SignInRepoImpl(
      gh<_i59.FirebaseAuth>(),
      gh<_i892.FirebaseMessaging>(),
      gh<_i804.SignInApi>(),
      gh<_i1052.TokenService>(),
    ),
  );
  gh.singleton<_i545.StatsUseCases>(
    () => _i545.StatsUseCases(gh<_i288.StatsRepo>()),
  );
  gh.singleton<_i975.StatsBloc>(
    () => _i975.StatsBloc(statsUseCases: gh<_i545.StatsUseCases>()),
  );
  gh.lazySingleton<_i494.ChangePassBloc>(
    () => _i494.ChangePassBloc(gh<_i146.SendPassResetEmailUseCase>()),
  );
  gh.singleton<_i995.ProfileUseCases>(
    () => _i995.ProfileUseCases(gh<_i364.ProfileRepo>(), gh<_i1.S3Repo>()),
  );
  gh.singleton<_i1011.FinancialRepo>(
    () => _i58.FinancialRepoImpl(gh<_i252.FinancialApi>()),
  );
  gh.singleton<_i967.NotificationsRepo>(
    () => _i666.NotificationsRepoImpl(gh<_i352.NotificationsApi>()),
  );
  gh.singleton<_i812.OrderItemsUseCases>(
    () => _i812.OrderItemsUseCases(gh<_i624.OrderItemsRepo>()),
  );
  gh.lazySingleton<_i677.OrderItemsBloc>(
    () => _i677.OrderItemsBloc(gh<_i812.OrderItemsUseCases>()),
  );
  gh.singleton<_i99.AuthBloc>(
    () => _i99.AuthBloc(authUseCases: gh<_i151.AuthUseCases>()),
  );
  gh.lazySingleton<_i226.SignUpBloc>(
    () => _i226.SignUpBloc(signUpUseCases: gh<_i251.SignUpUseCases>()),
  );
  gh.lazySingleton<_i332.DocsUseCase>(
    () => _i332.DocsUseCase(
      docsRepo: gh<_i744.DocsRepo>(),
      cachedDocsRepo: gh<_i576.CachedDocsRepo>(),
    ),
  );
  gh.lazySingleton<_i941.SignInUseCases>(
    () => _i941.SignInUseCases(gh<_i305.SignInRepo>()),
  );
  gh.lazySingleton<_i396.DocsBloc>(
    () => _i396.DocsBloc(
      docsUseCase: gh<_i332.DocsUseCase>(),
      db: gh<_i576.AppDatabase>(),
    ),
  );
  gh.lazySingleton<_i154.ForgotPassBloc>(
    () => _i154.ForgotPassBloc(gh<_i629.SendPassResetEmailUseCase>()),
  );
  gh.singleton<_i868.FinancialUseCases>(
    () => _i868.FinancialUseCases(gh<_i1011.FinancialRepo>()),
  );
  gh.singleton<_i139.NotificationsUseCases>(
    () => _i139.NotificationsUseCases(gh<_i967.NotificationsRepo>()),
  );
  gh.singleton<_i475.ProfileBloc>(
    () => _i475.ProfileBloc(gh<_i995.ProfileUseCases>()),
  );
  gh.singleton<_i781.NotificationsBloc>(
    () => _i781.NotificationsBloc(gh<_i139.NotificationsUseCases>()),
  );
  gh.singleton<_i468.FinancialBloc>(
    () => _i468.FinancialBloc(reportsUseCases: gh<_i868.FinancialUseCases>()),
  );
  gh.lazySingleton<_i665.SignInBloc>(
    () => _i665.SignInBloc(
      signInUseCases: gh<_i941.SignInUseCases>(),
      authBloc: gh<_i99.AuthBloc>(),
    ),
  );
  gh.singleton<_i660.ExpensesBloc>(
    () => _i660.ExpensesBloc(financialUseCases: gh<_i868.FinancialUseCases>()),
  );
  return getIt;
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$UserModule extends _i433.UserModule {}

class _$DioModule extends _i374.DioModule {}
