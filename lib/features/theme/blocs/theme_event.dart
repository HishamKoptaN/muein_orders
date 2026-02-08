part of 'theme_bloc.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.toggleTheme() = _ToggleTheme;
  const factory ThemeEvent.setMode({required ThemeMode mode}) = _SetMode;
  const factory ThemeEvent.setLight() = _SetLight;
  const factory ThemeEvent.setDark() = _SetDark;
}
