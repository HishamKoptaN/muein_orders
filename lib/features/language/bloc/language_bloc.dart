import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends HydratedBloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageState.initial()) {
    on<LanguageEvent>((event, emit) async {
      await event.map(
        changeLanguage: (e) async {
          emit(const LanguageState.loading());
          final locale = Locale(e.languageCode, e.countryCode ?? '');
          emit(LanguageState.loaded(currentLocale: locale));
        },
        resetToSystem: (_) async {
          emit(const LanguageState.loading());
          emit(const LanguageState.loaded(currentLocale: Locale('ar')));
        },
      );
    });
  }

  // ✅ Save state to storage
  @override
  LanguageState? fromJson(Map<String, dynamic> json) {
    try {
      final code = json['languageCode'] as String?;
      final country = json['countryCode'] as String?;
      if (code == null) return const LanguageState.initial();
      return LanguageState.loaded(currentLocale: Locale(code, country ?? ''));
    } catch (_) {
      return const LanguageState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(LanguageState state) => state.maybeWhen(
    loaded: (locale) => {
      'languageCode': locale.languageCode,
      'countryCode': locale.countryCode,
    },
    orElse: () => null,
  );
}
