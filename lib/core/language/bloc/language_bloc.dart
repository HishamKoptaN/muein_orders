import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

@singleton
class LanguageBloc extends HydratedBloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const .loaded(currentLocale: Locale('ar'))) {
    on<LanguageEvent>((event, emit) async {
      await event.map(
        changeLanguage: (e) async {
          emit(const .loading());
          final locale = Locale(e.languageCode, e.countryCode ?? '');
          emit(.loaded(currentLocale: locale));
        },
        resetToSystem: (_) async {
          emit(const .loading());
          emit(const .loaded(currentLocale: Locale('ar')));
        },
      );
    });
  }

  @override
  LanguageState? fromJson(Map<String, dynamic> json) {
    try {
      final code = json['languageCode'] as String?;
      final country = json['countryCode'] as String?;
      if (code == null) {
        return const .loaded(currentLocale: Locale('ar'));
      }
      return .loaded(currentLocale: Locale(code, country ?? ''));
    } catch (_) {
      return const .loaded(currentLocale: Locale('ar'));
    }
  }

  @override
  Map<String, dynamic>? toJson(LanguageState state) {
    return state.maybeWhen(
      loaded: (locale) {
        return {
          'languageCode': locale.languageCode,
          'countryCode': locale.countryCode,
        };
      },
      orElse: () {
        return null;
      },
    );
  }
}
