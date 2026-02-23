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
import '../../features/cached_docs/data/datasources/local/drift/app_database.dart'
    as _i523;
import '../../features/cached_docs/data/repo_impl/cached_docs_repo_impl.dart'
    as _i240;
import '../../features/cached_docs/domain/repo/cached_docs_repo.dart' as _i281;
import '../../features/cached_docs/domain/usecases/cached_docs_use_cases.dart'
    as _i748;
import '../../features/cached_docs/present/bloc/cached_doc_bloc.dart' as _i422;
import '../../features/docs/data/datasources/remote_data_sr/docs_api.dart'
    as _i977;
import '../../features/docs/data/repo_impl/docs_repo_impl.dart' as _i430;
import '../../features/docs/domain/repo/docs_repo.dart' as _i672;
import '../../features/docs/domain/usecases/docs_use_cases.dart' as _i689;
import '../../features/docs/present/blocs/docs_bloc/docs_bloc.dart' as _i617;
import '../../features/financial/data/datasources/financial_api.dart' as _i252;
import '../../features/financial/data/repo_impl/financial_repo_impl.dart'
    as _i58;
import '../../features/financial/domain/repo/orders_repo.dart' as _i1011;
import '../../features/financial/domain/usecases/financial_use_cases.dart'
    as _i868;
import '../../features/financial/present/financial_rep_bloc/financial_bloc.dart'
    as _i578;
import '../../features/home/data/datasources/home_api.dart' as _i11;
import '../../features/home/data/repo_impl/home_repo_impl.dart' as _i886;
import '../../features/home/domain/repo/home_repo.dart' as _i280;
import '../../features/home/domain/usecases/home_use_cases.dart' as _i583;
import '../../features/home/present/bloc/home_bloc.dart' as _i481;
import '../../features/instructions/present/bloc/instructions_bloc.dart'
    as _i197;
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
import '../../features/orders/data/datasources/orders_api.dart' as _i165;
import '../../features/orders/data/repo_impl/orders_repo_impl.dart' as _i450;
import '../../features/orders/domain/repo/orders_repo.dart' as _i808;
import '../../features/orders/domain/usecases/orders_use_cases.dart' as _i802;
import '../../features/orders/present/bloc/orders_bloc.dart' as _i189;
import '../../features/profile/data/datasources/profile_api.dart' as _i191;
import '../../features/profile/data/repo/profile_repo_impl.dart' as _i256;
import '../../features/profile/domain/repo/profile_repo.dart' as _i364;
import '../../features/profile/domain/use_cases/profile_use_cases.dart'
    as _i995;
import '../../features/profile/present/bloc/profile_bloc.dart' as _i475;
import '../../features/s3/data/data_sources/s3_api.dart' as _i335;
import '../../features/s3/data/repo/s3_repo.dart' as _i1;
import '../../features/s3/domain/repo_impl/s3_repo_impl.dart' as _i758;
import '../../features/theme/blocs/theme_bloc.dart' as _i307;
import '../background/workmanager_initializer.dart' as _i996;
import '../networking/network_info.dart' as _i303;
import '../services/notification_manager.dart' as _i105;
import '../utils/app_file_manager.dart' as _i246;
import 'api_module.dart' as _i804;
import 'dio/api_module.dart' as _i158;
import 'dio/dio_module.dart' as _i374;
import 'injection_module.dart' as _i212;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  final apiModule = _$ApiModule();
  final dioModule = _$DioModule();
  await gh.factoryAsync<_i460.SharedPreferencesAsync>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i996.WorkManagerInitializer>(
    () => _i996.WorkManagerInitializer(),
  );
  gh.singleton<_i804.LoggingInterceptor>(() => _i804.LoggingInterceptor());
  gh.singleton<_i557.Env>(() => apiModule.config);
  gh.singleton<_i158.LoggingInterceptor>(() => _i158.LoggingInterceptor());
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
  gh.singleton<_i246.AppFileManager>(() => _i246.AppFileManager());
  gh.singleton<_i523.AppDatabase>(() => _i523.AppDatabase());
  gh.singleton<_i197.InstructionsBloc>(() => _i197.InstructionsBloc());
  gh.singleton<_i724.LanguageBloc>(() => _i724.LanguageBloc());
  gh.singleton<_i307.ThemeBloc>(() => _i307.ThemeBloc());
  gh.lazySingleton<_i804.TokenStorage>(() => _i804.TokenStorage());
  gh.lazySingleton<_i158.TokenStorage>(() => _i158.TokenStorage());
  gh.singleton<_i361.Dio>(() => dioModule.s3Dio(), instanceName: 's3Dio');
  gh.singleton<_i281.CachedDocsRepo>(
    () => _i240.CachedDocsRepoImpl(gh<_i523.AppDatabase>()),
  );
  gh.singleton<_i158.AuthInterceptor>(
    () => _i158.AuthInterceptor(gh<_i158.TokenStorage>()),
  );
  gh.lazySingleton<_i105.NotificationManager>(
    () =>
        _i105.NotificationManager(gh<_i163.FlutterLocalNotificationsPlugin>()),
  );
  gh.singleton<_i804.AuthInterceptor>(
    () => _i804.AuthInterceptor(gh<_i804.TokenStorage>()),
  );
  gh.lazySingleton<_i532.ChangePassRepo>(
    () => _i901.ChangePassRepositoryImpl(gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i614.ForgotPassRepo>(
    () => _i877.ForgotPasswordRepositoryImpl(gh<_i59.FirebaseAuth>()),
  );
  gh.singleton<_i303.NetworkInfo>(
    () => _i303.NetworkInfoImpl(
      connectionChecker: gh<_i161.InternetConnection>(),
    ),
  );
  gh.singleton<_i361.Dio>(
    () => dioModule.dio(
      gh<_i158.AuthInterceptor>(),
      gh<_i158.LoggingInterceptor>(),
    ),
  );
  gh.lazySingleton<_i1.S3Repo>(
    () => _i758.S3RepoImpl(gh<_i361.Dio>(instanceName: 's3Dio')),
  );
  gh.singleton<_i361.Dio>(
    () => dioModule.authDio(
      gh<_i158.AuthInterceptor>(),
      gh<_i158.LoggingInterceptor>(),
    ),
    instanceName: 'authDio',
  );
  gh.lazySingleton<_i977.DocsApi>(() => _i977.DocsApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i191.ProfileApi>(() => _i191.ProfileApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i335.S3Api>(() => _i335.S3Api(gh<_i361.Dio>()));
  gh.singleton<_i252.FinancialApi>(() => _i252.FinancialApi(gh<_i361.Dio>()));
  gh.singleton<_i11.HomeApi>(() => _i11.HomeApi(gh<_i361.Dio>()));
  gh.singleton<_i352.NotificationsApi>(
    () => _i352.NotificationsApi(gh<_i361.Dio>()),
  );
  gh.singleton<_i165.OrdersApi>(() => _i165.OrdersApi(gh<_i361.Dio>()));
  gh.lazySingleton<_i672.DocsRepo>(
    () => _i430.DocsRepoImpl(
      docsApi: gh<_i977.DocsApi>(),
      db: gh<_i523.AppDatabase>(),
      s3Repo: gh<_i1.S3Repo>(),
    ),
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
  gh.lazySingleton<_i280.HomeRepo>(
    () => _i886.HomeRepoImpl(gh<_i11.HomeApi>()),
  );
  gh.singleton<_i1011.FinancialRepo>(
    () => _i58.FinancialRepoImpl(gh<_i252.FinancialApi>()),
  );
  gh.lazySingleton<_i629.SendPassResetEmailUseCase>(
    () => _i629.SendPassResetEmailUseCase(gh<_i614.ForgotPassRepo>()),
  );
  gh.lazySingleton<_i146.SendPassResetEmailUseCase>(
    () => _i146.SendPassResetEmailUseCase(gh<_i532.ChangePassRepo>()),
  );
  gh.singleton<_i967.NotificationsRepo>(
    () => _i666.NotificationsRepoImpl(gh<_i352.NotificationsApi>()),
  );
  gh.singleton<_i139.NotificationsUseCases>(
    () => _i139.NotificationsUseCases(gh<_i967.NotificationsRepo>()),
  );
  gh.lazySingleton<_i689.DocsUseCase>(
    () => _i689.DocsUseCase(
      docsRepo: gh<_i672.DocsRepo>(),
      cachedDocsRepo: gh<_i281.CachedDocsRepo>(),
    ),
  );
  gh.singleton<_i583.HomeUseCases>(
    () => _i583.HomeUseCases(gh<_i280.HomeRepo>()),
  );
  gh.lazySingleton<_i494.ChangePassBloc>(
    () => _i494.ChangePassBloc(gh<_i146.SendPassResetEmailUseCase>()),
  );
  gh.lazySingleton<_i154.ForgotPassBloc>(
    () => _i154.ForgotPassBloc(gh<_i629.SendPassResetEmailUseCase>()),
  );
  gh.singleton<_i617.DocsBloc>(
    () => _i617.DocsBloc(
      docsUseCase: gh<_i689.DocsUseCase>(),
      db: gh<_i523.AppDatabase>(),
    ),
  );
  gh.singleton<_i868.FinancialUseCases>(
    () => _i868.FinancialUseCases(gh<_i1011.FinancialRepo>()),
  );
  gh.singleton<_i781.NotificationsBloc>(
    () => _i781.NotificationsBloc(gh<_i139.NotificationsUseCases>()),
  );
  gh.singleton<_i808.OrdersRepo>(
    () => _i450.OrdersRepoImpl(gh<_i165.OrdersApi>()),
  );
  gh.singleton<_i748.CachedDocsUseCases>(
    () => _i748.CachedDocsUseCases(
      docsRepo: gh<_i672.DocsRepo>(),
      cachedDocsRepo: gh<_i281.CachedDocsRepo>(),
      fileManager: gh<_i246.AppFileManager>(),
    ),
  );
  gh.lazySingleton<_i364.ProfileRepo>(
    () =>
        _i256.ProfileRepoImpl(gh<_i191.ProfileApi>(), gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i305.SignInRepo>(
    () => _i218.SignInRepoImpl(
      gh<_i59.FirebaseAuth>(),
      gh<_i892.FirebaseMessaging>(),
      gh<_i804.SignInApi>(),
      gh<_i804.TokenStorage>(),
    ),
  );
  gh.lazySingleton<_i610.AuthRepo>(
    () => _i246.AuthRepoImpl(gh<_i59.FirebaseAuth>(), gh<_i976.AuthApi>()),
  );
  gh.lazySingleton<_i871.SignUpRepo>(
    () => _i17.SignUpRepoImpl(gh<_i552.SignUpApi>(), gh<_i804.TokenStorage>()),
  );
  gh.singleton<_i802.OrdersUseCases>(
    () => _i802.OrdersUseCases(gh<_i808.OrdersRepo>()),
  );
  gh.singleton<_i481.HomeBloc>(
    () => _i481.HomeBloc(homeUseCases: gh<_i583.HomeUseCases>()),
  );
  gh.lazySingleton<_i941.SignInUseCases>(
    () => _i941.SignInUseCases(gh<_i305.SignInRepo>(), gh<_i59.FirebaseAuth>()),
  );
  gh.lazySingleton<_i251.SignUpUseCases>(
    () => _i251.SignUpUseCasesImpl(gh<_i871.SignUpRepo>()),
  );
  gh.singleton<_i151.AuthUseCase>(
    () => _i151.AuthUseCase(authRepo: gh<_i610.AuthRepo>()),
  );
  gh.singleton<_i189.OrdersBloc>(
    () => _i189.OrdersBloc(
      gh<_i802.OrdersUseCases>(),
      gh<_i281.CachedDocsRepo>(),
    ),
  );
  gh.singleton<_i995.ProfileUseCases>(
    () => _i995.ProfileUseCases(gh<_i364.ProfileRepo>(), gh<_i1.S3Repo>()),
  );
  gh.singleton<_i578.FinancialBloc>(
    () => _i578.FinancialBloc(reportsUseCases: gh<_i868.FinancialUseCases>()),
  );
  gh.singleton<_i99.AuthBloc>(
    () => _i99.AuthBloc(authUseCases: gh<_i151.AuthUseCase>()),
  );
  gh.singleton<_i422.CachedDocBloc>(
    () => _i422.CachedDocBloc(
      gh<_i748.CachedDocsUseCases>(),
      gh<_i246.AppFileManager>(),
    ),
  );
  gh.lazySingleton<_i226.SignUpBloc>(
    () => _i226.SignUpBloc(signUpUseCases: gh<_i251.SignUpUseCases>()),
  );
  gh.lazySingleton<_i665.SignInBloc>(
    () => _i665.SignInBloc(signInUseCases: gh<_i941.SignInUseCases>()),
  );
  gh.singleton<_i475.ProfileBloc>(
    () => _i475.ProfileBloc(gh<_i995.ProfileUseCases>()),
  );
  return getIt;
}

class _$InjectionModule extends _i212.InjectionModule {}

class _$ApiModule extends _i158.ApiModule {}

class _$DioModule extends _i374.DioModule {}
