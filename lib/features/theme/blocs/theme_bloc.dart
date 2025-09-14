import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'theme_event.dart';
import 'theme_state.dart';

@injectable
class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  @factoryMethod
  ThemeBloc() : super(ThemeState(mode: ThemeMode.system)) {
    on<ThemeEvent>((event, emit) {
      event.map(
        toggleTheme: (_) {
          emit(
            state.mode == ThemeMode.light
                ? ThemeState.dark()
                : ThemeState.light(),
          );
        },
        setLight: (_) => emit(ThemeState.light()),
        setDark: (_) => emit(ThemeState.dark()),
        setMode: (v) => emit(ThemeState(mode: v.mode)),
      );
    });
  }
  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    final modeStr = json['mode'] as String?;
    switch (modeStr) {
      case 'light':
        return ThemeState.light();
      case 'dark':
        return ThemeState.dark();
      case 'system':
        return ThemeState(mode: ThemeMode.system);
      default:
        return ThemeState(mode: ThemeMode.system);
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return {'mode': state.mode.name};
  }
}
