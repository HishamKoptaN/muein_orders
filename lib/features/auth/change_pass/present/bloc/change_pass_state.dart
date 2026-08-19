part of 'change_pass_bloc.dart';

@freezed
abstract class ChangePassState with _$ChangePassState {
  const factory ChangePassState.loading() = ChangePassLoading;
  const factory ChangePassState.loaded({
    required PasswordFormInput password,
    required PasswordFormInput confirmPassword,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory ChangePassState.success() = ChangePassSuccess;
  const factory ChangePassState.failure(String error) = ChangePassFailure;
}
