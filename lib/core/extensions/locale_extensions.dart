import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mubin_orders/features/language/bloc/language_bloc.dart';

extension LocaleExtension on BuildContext {
  /// الحصول على اللغة الحالية من الـ language state
  Locale get currentLocale {
    try {
      final languageState = read<LanguageBloc>().state;
      return languageState.maybeWhen(
        loaded: (locale) => locale,
        orElse: () => const Locale('ar'),
      );
    } catch (e) {
      debugPrint('Error getting current locale: $e');
      return const Locale('ar');
    }
  }
}
