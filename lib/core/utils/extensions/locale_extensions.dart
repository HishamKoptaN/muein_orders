import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../language/bloc/language_bloc.dart';

extension LocaleExtension on BuildContext {
  Locale get currentLocale {
    try {
      final languageState = read<LanguageBloc>().state;
      return languageState.maybeWhen(
        loaded: (locale) {
          return locale;
        },
        orElse: () {
          return const Locale('ar');
        },
      );
    } catch (e) {
      debugPrint('Error getting current locale: $e');
      return const Locale('ar');
    }
  }
}
