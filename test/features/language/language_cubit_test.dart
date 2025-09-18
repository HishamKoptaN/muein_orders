import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:storage_utils/storage_utils.dart';
import 'package:flutter/material.dart';
import 'package:mubin_orders/features/language/bloc/language_bloc.dart';
import 'package:mubin_orders/features/language/bloc/language_event.dart';
import 'package:mubin_orders/features/language/bloc/language_state.dart';
import 'package:mubin_orders/core/database/shared_pref_keys.dart';

class MockPrefs extends Mock implements SharedPrefs {}

void main() {
  late MockPrefs mockPrefs;

  setUp(() {
    mockPrefs = MockPrefs();
  });

  group('LanguageBloc', () {
    blocTest<LanguageBloc, LanguageState>(
      'emits initial state with ar locale',
      build: () => LanguageBloc(prefs: mockPrefs),
      verify: (bloc) {
        expect(bloc.state.currentLocale.languageCode, 'ar');
        expect(bloc.state.isLoading, false);
      },
    );

    blocTest<LanguageBloc, LanguageState>(
      'getSavedLanguage loads saved language from prefs',
      build: () {
        when(() => mockPrefs.getString(SharedPrefKeys.languageCode))
            .thenAnswer((_) async => 'en');
        when(() => mockPrefs.getString(SharedPrefKeys.languageCountryCode))
            .thenAnswer((_) async => null);
        return LanguageBloc(prefs: mockPrefs);
      },
      act: (bloc) => bloc.add(const LanguageEvent.getSavedLanguage()),
      expect: () => [
        // Initial state is already set in the bloc constructor
        isA<LanguageState>()
          .having((s) => s.currentLocale.languageCode, 'languageCode', 'ar')
          .having((s) => s.isLoading, 'isLoading', false),
        // State after getSavedLanguage is called
        isA<LanguageState>()
          .having((s) => s.isLoading, 'isLoading', true),
        // Final state after language is loaded
        isA<LanguageState>()
          .having((s) => s.currentLocale.languageCode, 'languageCode', 'en')
          .having((s) => s.isLoading, 'isLoading', false),
      ],
      verify: (_) {
        verify(() => mockPrefs.getString(SharedPrefKeys.languageCode)).called(1);
        verify(() => mockPrefs.getString(SharedPrefKeys.languageCountryCode)).called(1);
      },
    );

    blocTest<LanguageBloc, LanguageState>(
      'changeLanguage updates locale and saves to prefs',
      build: () {
        when(() => mockPrefs.setString(any(), any())).thenAnswer((_) async => true);
        return LanguageBloc(prefs: mockPrefs);
      },
      act: (bloc) => bloc.add(const LanguageEvent.changeLanguage(languageCode: 'en')),
      expect: () => [
        isA<LanguageState>().having((s) => s.isLoading, 'isLoading', true),
        isA<LanguageState>()
            .having((s) => s.currentLocale.languageCode, 'languageCode', 'en')
            .having((s) => s.isLoading, 'isLoading', false),
      ],
      verify: (_) {
        verify(() => mockPrefs.setString(SharedPrefKeys.languageCode, 'en')).called(1);
      },
    );

    blocTest<LanguageBloc, LanguageState>(
      'languageChanged updates the current locale',
      build: () => LanguageBloc(prefs: mockPrefs),
      act: (bloc) => bloc.add(const LanguageEvent.languageChanged(languageCode: 'en')),
      expect: () => [
        isA<LanguageState>()
            .having((s) => s.currentLocale.languageCode, 'languageCode', 'en')
            .having((s) => s.isLoading, 'isLoading', false),
      ],
    );
  });
}
