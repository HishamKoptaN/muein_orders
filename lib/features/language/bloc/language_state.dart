part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  /// Initial state
  const factory LanguageState.initial() = _Initial;

  /// Loading state
  const factory LanguageState.loading() = _Loading;

  /// Loaded state with current locale
  const factory LanguageState.loaded({required Locale currentLocale}) = _Loaded;

  const LanguageState._();

  // Helper
  bool get isLoaded => maybeWhen(loaded: (_) => true, orElse: () => false);
}
