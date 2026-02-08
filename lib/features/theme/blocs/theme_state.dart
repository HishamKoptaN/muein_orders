part of 'theme_bloc.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState.loading() = _Loading;
  const factory ThemeState.loaded({required ThemeMode themeMode}) = _Loaded;
}
