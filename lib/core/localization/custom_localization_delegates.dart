import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// Custom Material Localizations delegate that supports additional locales
class CustomMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const CustomMaterialLocalizationsDelegate();

  static const List<Locale> _supportedLocales = [
    Locale('lg'),
    Locale('sw'),
    Locale('yo'),
    Locale('ff'),
    Locale('ak'),
    Locale('fr'),
    Locale('ar'),
  ];

  @override
  bool isSupported(Locale locale) {
    return _supportedLocales.any((l) => l.languageCode == locale.languageCode) ||
           GlobalMaterialLocalizations.delegate.isSupported(locale);
  }

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    try {
      return await GlobalMaterialLocalizations.delegate.load(locale);
    } catch (e) {
      return await GlobalMaterialLocalizations.delegate.load(const Locale('en'));
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<MaterialLocalizations> old) => false;
}
