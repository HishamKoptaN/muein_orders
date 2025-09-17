import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  @factoryMethod
  ThemeBloc() : super(const ThemeState.loading()) {
    on<ThemeEvent>((event, emit) {
      event.map(
        toggleTheme: (_) {
          emit(
            state.maybeWhen(
              orElse: () => const ThemeState.loading(),
              loaded: (themeMode) => themeMode == ThemeMode.light
                  ? const ThemeState.loaded(themeMode: ThemeMode.dark)
                  : const ThemeState.loaded(themeMode: ThemeMode.light),
            ),
          );
        },
        setLight: (_) =>
            emit(const ThemeState.loaded(themeMode: ThemeMode.light)),
        setDark: (_) =>
            emit(const ThemeState.loaded(themeMode: ThemeMode.dark)),
        setMode: (v) => emit(ThemeState.loaded(themeMode: v.mode)),
      );
    });
  }
  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    final modeStr = json['mode'] as String?;
    switch (modeStr) {
      case 'light':
        return const ThemeState.loaded(themeMode: ThemeMode.light);
      case 'dark':
        return const ThemeState.loaded(themeMode: ThemeMode.dark);
      case 'system':
        return const ThemeState.loaded(themeMode: ThemeMode.system);
      default:
        return const ThemeState.loaded(themeMode: ThemeMode.system);
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) => {
    'mode': state.maybeWhen(
      orElse: () => 'system',
      loaded: (themeMode) => themeMode.name,
    ),
  };
}
