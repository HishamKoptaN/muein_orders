part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    required Locale currentLocale,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _LanguageState;

  factory LanguageState.initial() =>
      const LanguageState(currentLocale: Locale('ar'));
}
