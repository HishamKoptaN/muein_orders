import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'theme_event.freezed.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.toggleTheme() = _ToggleTheme;
  const factory ThemeEvent.setMode({required ThemeMode mode}) = _SetMode;
  const factory ThemeEvent.setLight() = _SetLight;
  const factory ThemeEvent.setDark() = _SetDark;
}
