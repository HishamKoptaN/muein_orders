part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.dataChanged({required SignInReqEntity signInReq}) =
      _DataChanged;
  const factory SignInEvent.signIn() = _SignIn;
}
