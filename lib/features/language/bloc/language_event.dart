part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  /// Change app language (e.g. "en", "ar", with optional country code)
  const factory LanguageEvent.changeLanguage({
    required String languageCode,
    String? countryCode,
  }) = _ChangeLanguage;

  /// Reset language to system default
  const factory LanguageEvent.resetToSystem() = _ResetToSystem;
}
