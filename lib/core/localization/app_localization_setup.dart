import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'custom_localization_delegates.dart';

class AppLocalizationSetup {
  static List<Locale> supportedLocales = const [
    Locale('ar'),
    Locale('en'),
    Locale('fr'),
    Locale('sw'),
    Locale('ak'),
    Locale('ff'),
    Locale('lg'),
  ];

  static List<LocalizationsDelegate<dynamic>> localizationDelegates = [
    CustomMaterialLocalizationsDelegate(),
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    DefaultMaterialLocalizations.delegate,
    DefaultWidgetsLocalizations.delegate,
  ];

  static LocaleResolutionCallback localeResolutionCallback =
      (locale, supportedLocales) {
        if (locale != null) {
          for (final supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode) {
              return supportedLocale;
            }
          }
        }
        return const Locale('en');
      };
}
