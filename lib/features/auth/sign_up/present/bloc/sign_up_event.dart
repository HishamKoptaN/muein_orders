part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.dataChanged({required SignUpReqEntity signUpReq}) =
      _DataChanged;
  const factory SignUpEvent.signUp() = _SignUp;
}
