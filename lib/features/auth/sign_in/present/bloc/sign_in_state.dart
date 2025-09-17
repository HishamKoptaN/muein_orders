part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = _Loading;
  const factory SignInState.loaded({
    required EmailInput email,
    required PasswordInput password,
    required GenericFormzInput rememberMe,
    required GenericFormzInput obscurePassword,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory SignInState.success() = _Success;

  const factory SignInState.failure({@Default('') String errorMessage}) =
      _Failure;

  const factory SignInState.unauthenticated() = _Unauthenticated;
}
