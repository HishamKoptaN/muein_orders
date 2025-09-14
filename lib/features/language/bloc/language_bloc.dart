import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends HydratedBloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState.initial()) {
    on<LanguageEvent>((event, emit) {
      event.when(
        changeLanguage: (languageCode, countryCode) {
          final locale = Locale(languageCode, countryCode ?? '');
          emit(state.copyWith(currentLocale: locale, errorMessage: null));
        },
      );
    });
  }

  // ✅ HydratedBloc يحتاج حفظ الحالة
  @override
  LanguageState? fromJson(Map<String, dynamic> json) {
    try {
      final code = json['languageCode'] as String?;
      final country = json['countryCode'] as String?;
      if (code == null) return null;
      return LanguageState(
        currentLocale: Locale(code, country ?? ''),
        isLoading: false,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(LanguageState state) {
    return {
      'languageCode': state.currentLocale.languageCode,
      'countryCode': state.currentLocale.countryCode,
    };
  }
}
