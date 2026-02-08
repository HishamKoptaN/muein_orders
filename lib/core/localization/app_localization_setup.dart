import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../l10n/app_localizations.dart';
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
    AppLocalizations.delegate,
    const CustomMaterialLocalizationsDelegate(),
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    DefaultMaterialLocalizations.delegate,
    DefaultWidgetsLocalizations.delegate,
    const FallbackLocalizationDelegate(),
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

class FallbackLocalizationDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const FallbackLocalizationDelegate();

  static const List<String> _supported = ['lg', 'sw', 'yo', 'ff', 'ak', 'fr'];

  @override
  bool isSupported(Locale locale) => _supported.contains(locale.languageCode);

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    switch (locale.languageCode) {
      case 'lg': // Luganda
        return const _BasicLocalizedTexts({
          'ok': 'Kale',
          'cancel': 'Sazaamu',
          'back': 'Ddayo',
        });
      case 'sw': // Swahili
        return const _BasicLocalizedTexts({
          'ok': 'Sawa',
          'cancel': 'Katisha',
          'back': 'Rudi',
        });
      case 'yo': // Yoruba
        return const _BasicLocalizedTexts({
          'ok': 'O Dára',
          'cancel': 'Fagilé',
          'back': 'Padà',
        });
      case 'ff': // Fulfulde
        return const _BasicLocalizedTexts({
          'ok': 'Eey',
          'cancel': 'Haay',
          'back': 'Rutto',
        });
      case 'ak': // Akan
        return const _BasicLocalizedTexts({
          'ok': 'Yoo',
          'cancel': 'Gyae',
          'back': 'Kɔ Ekyiri',
        });
      case 'fr': // French (fallback for some African French)
        return const _BasicLocalizedTexts({
          'ok': 'D\'accord',
          'cancel': 'Annuler',
          'back': 'Retour',
        });
      default:
        return const DefaultWidgetsLocalizations();
    }
  }

  @override
  bool shouldReload(
          covariant LocalizationsDelegate<WidgetsLocalizations> old) =>
      false;
}

class _BasicLocalizedTexts extends DefaultWidgetsLocalizations {
  final Map<String, String> texts;
  const _BasicLocalizedTexts(this.texts);

  @override
  String get okButtonLabel => texts['ok'] ?? 'OK';
  @override
  String get cancelButtonLabel => texts['cancel'] ?? 'Cancel';
  @override
  String get backButtonTooltip => texts['back'] ?? 'Back';
}
