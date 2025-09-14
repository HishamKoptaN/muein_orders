part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = _Loading;
  const factory SignInState.success() = _Success;
  const factory SignInState.loaded({
    required EmailInput email,
    required PasswordInput password,
    required bool isValid,
    required bool isPasswordVisible,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    String? errorMessage,
  }) = _Loaded;

  const factory SignInState.failure({
    required ApiErrorModel error,
  }) = _Failure;
}
