import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CustomMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
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
    return _supportedLocales.any((l) {
          return l.languageCode == locale.languageCode;
        }) ||
        GlobalMaterialLocalizations.delegate.isSupported(locale);
  }

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    try {
      return await GlobalMaterialLocalizations.delegate.load(locale);
    } catch (e) {
      return await GlobalMaterialLocalizations.delegate.load(
        const Locale('en'),
      );
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<MaterialLocalizations> old) {
    return false;
  }
}
