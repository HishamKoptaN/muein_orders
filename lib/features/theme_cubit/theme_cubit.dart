import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'theme_state.dart';

@injectable
class ThemeCubit extends Cubit<ThemeState> {
  static const _themeKey = 'app_theme_mode';
  ThemeCubit() : super(const ThemeState(themeMode: ThemeMode.system));
  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt(_themeKey);
    final themeMode = ThemeMode.values[themeIndex ?? ThemeMode.system.index];
    emit(ThemeState(themeMode: themeMode));
  }

  Future<void> toggleTheme({required bool isDark}) async {
    final themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    await _saveTheme(mode: themeMode);
    emit(ThemeState(themeMode: themeMode));
  }

  Future<void> setSystemTheme() async {
    await _saveTheme(mode: ThemeMode.system);
    emit(const ThemeState(themeMode: ThemeMode.system));
  }

  Future<void> _saveTheme({required ThemeMode mode}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_themeKey, mode.index);
  }
}
