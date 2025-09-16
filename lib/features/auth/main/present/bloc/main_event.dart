part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.check() = _Check;
  const factory MainEvent.toggleRememberMe() = _ToggleRememberMe;
}
