import 'package:auth/auth.dart' as auth;
import 'package:auth/auth/present/bloc/main_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sign_in/sign_in.dart' as signIn;
import 'app.dart';
import 'core/all_imports.dart';
import 'core/app_observer.dart';
import 'core/database/cache/shared_pref_helper.dart';
import 'core/database/cache/shared_pref_keys.dart';
import 'core/di/dependency_injection.dart';
import 'features/language/bloc/language_cubit.dart';
import 'features/docs/present/blocs/bloc/docs_bloc.dart';
import 'features/orders/present/bloc/orders_bloc.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
      (await getTemporaryDirectory()).path,
    ),
  );
  configureDependencies();
  auth.configureAuthDependencies(
    instance: getIt,
  );
  signIn.configureSignInDependencies(
    instance: getIt,
  );
  getIt.registerLazySingleton<Locale>(
    () => const Locale(
      'ar',
    ),
  );
  await ScreenUtil.ensureScreenSize();
  if (!kReleaseMode) {
    Bloc.observer = AppBlocObserver();
    SharedPrefHelper.setSecuredString(
      key: SharedPrefKeys.userToken,
      value: '69|jwDSZvEUw3kQo4wpRYqRLUgItpfjw6LwemI5oY8zece4ae63',
    );
  }
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MainBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<LanguageCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<DocsBloc>(),
        )
      ],
      child: MubinOrdersApp(),
    ),
  );
}
