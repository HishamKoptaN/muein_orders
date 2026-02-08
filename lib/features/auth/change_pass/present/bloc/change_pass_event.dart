part of 'change_pass_bloc.dart';

@freezed
abstract class ChangePassEvent with _$ChangePassEvent {
  const factory ChangePassEvent.dataChanged({
    PasswordInput? password,
    PasswordInput? confirmPassword,
  }) = _DataChanged;
  const factory ChangePassEvent.update() = _Update;
}
