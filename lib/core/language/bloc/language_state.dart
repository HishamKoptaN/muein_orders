part of 'language_bloc.dart';

@freezed
abstract class LanguageState with _$LanguageState {
  const factory LanguageState.loading() = _Loading;

  const factory LanguageState.loaded({required Locale currentLocale}) = _Loaded;

  const LanguageState._();

  bool get isLoaded {
    return maybeWhen(
      loaded: (_) {
        return true;
      },
      orElse: () {
        return false;
      },
    );
  }
}
