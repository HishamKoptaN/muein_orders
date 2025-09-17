part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.dataChanged({
    EmailInput? email,
    PasswordInput? password,
    GenericFormzInput? rememberMe,
    GenericFormzInput? obscurePassword,
  }) = _DataChanged;
  const factory SignInEvent.signInWithCredentialsPressed() =
      _SignInWithCredentialsPressed;
  const factory SignInEvent.signedOut() = _SignedOut;
}
