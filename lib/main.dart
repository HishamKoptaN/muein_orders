import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'core/all_imports.dart';
import 'core/app_observer.dart';
import 'core/database/cache/shared_pref_helper.dart';
import 'core/database/cache/shared_pref_keys.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'features/login/present/bloc/login_bloc.dart';
import 'features/main/present/view/main_view.dart';
import 'features/docs/present/blocs/bloc/docs_bloc.dart';
import 'features/orders/present/bloc/orders_bloc.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory:
        HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  configureDependencies();
  await ScreenUtil.ensureScreenSize();
  String locale = await SharedPrefHelper.getString(
        key: SharedPrefKeys.languageCode,
      ) ??
      'ar';
  if (!kReleaseMode) {
    Bloc.observer = AppBlocObserver();
    await SharedPrefHelper.setSecuredString(
      key: SharedPrefKeys.userToken,
      value: '52|tshshgCS8EdvLMgTTTWlYBsG1qMbC3vMS75JrM0Vebaddb01',
    );
  }
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<DocsBloc>(),
        )
      ],
      child: MyApp(
        locale: locale,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
    required this.locale,
  });
  String? locale;
  @override
  Widget build(
    BuildContext context,
  ) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(
          locale ?? '',
        ),
        onGenerateRoute: onGenerateRoute,
        initialRoute: MainView.routeName,
      ),
    );
  }
}
