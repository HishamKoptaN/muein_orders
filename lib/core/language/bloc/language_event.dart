part of 'language_bloc.dart';

@freezed
abstract class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.changeLanguage({
    required String languageCode,
    String? countryCode,
  }) = _ChangeLanguage;
  const factory LanguageEvent.resetToSystem() = _ResetToSystem;
}
