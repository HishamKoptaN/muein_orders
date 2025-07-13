import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'core/all_imports.dart';
import 'core/app_observer.dart';
import 'core/database/cache/shared_pref_helper.dart';
import 'core/database/cache/shared_pref_keys.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'core/theme/core/modes/dark_theme.dart';
import 'core/theme/core/modes/light_theme.dart';
import 'features/language/bloc/language_cubit.dart';
import 'features/sign_in/present/bloc/sign_in_bloc.dart';
import 'features/main/present/view/main_view.dart';
import 'features/docs/present/blocs/bloc/docs_bloc.dart';
import 'features/orders/present/bloc/orders_bloc.dart';
import 'features/theme_cubit/theme_cubit.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';
import 'package:country_picker/country_picker.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final savedThemeMode = await AdaptiveTheme.getThemeMode();
//   runApp(MyApp(savedThemeMode: savedThemeMode));
// }
// class MyApp extends StatelessWidget {
//   final AdaptiveThemeMode? savedThemeMode;
//   const MyApp({super.key, this.savedThemeMode});
//   @override
//   Widget build(BuildContext context) {
//     return AdaptiveTheme(
//       light: ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.light,
//         colorSchemeSeed: Colors.blue,
//       ),
//       dark: ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.dark,
//         colorSchemeSeed: Colors.blue,
//       ),
//       initial: savedThemeMode ?? AdaptiveThemeMode.dark,
//       // overrideMode: AdaptiveThemeMode.dark,
//       builder: (theme, darkTheme) => MaterialApp(
//         title: 'Adaptive Theme Demo',
//         theme: theme,
//         darkTheme: darkTheme,
//         home: const MyHomePage(),
//       ),
//       debugShowFloatingThemeButton: true,
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Adaptive Theme Demo'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'This is a sample app to demonstrate the usage of adaptive theme.',
//               ),
//               const Text(
//                 'You can switch between light and dark theme using the switch below.',
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const Text('Light'),
//                   const SizedBox(width: 10),
//                   Switch(
//                     value: AdaptiveTheme.of(context).mode.isDark,
//                     onChanged: (value) {
//                       if (value) {
//                         AdaptiveTheme.of(context).setDark();
//                       } else {
//                         AdaptiveTheme.of(context).setLight();
//                       }
//                     },
//                   ),
//                   const SizedBox(width: 10),
//                   const Text('Dark'),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // HydratedBloc.storage = await HydratedStorage.build(
  //   storageDirectory: HydratedStorageDirectory((await getTemporaryDirectory()).path),
  // );
  configureDependencies();
  getIt.registerLazySingleton<Locale>(() => const Locale('ar'));
  await ScreenUtil.ensureScreenSize();
  if (!kReleaseMode) {
    Bloc.observer = AppBlocObserver();
    await SharedPrefHelper.setSecuredString(
      key: SharedPrefKeys.userToken,
      value: '57|lSThz8Dult8KneqY7coVeWVrBKqsl66GFUCBt1175e62a16c',
    );
  }
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ThemeCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<LanguageCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<SignInBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<DocsBloc>(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
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
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeMode) {
          return BlocBuilder<LanguageCubit, Locale>(
            builder: (context, locale) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: lightTheme(),
                darkTheme: darkTheme(),
                themeMode: themeMode.themeMode,
                localizationsDelegates: [
                  ...AppLocalizations.localizationsDelegates,
                  CountryLocalizations.delegate,
                  CountryLocalizations.delegate,
                ],
                supportedLocales: AppLocalizations.supportedLocales,
                locale: locale,
                onGenerateRoute: onGenerateRoute,
                initialRoute: MainView.routeName,
                // home: ControlPanel(
                //   index: 3,
                // ),
              );
            },
          );
        },
      ),
    );
  }
}
