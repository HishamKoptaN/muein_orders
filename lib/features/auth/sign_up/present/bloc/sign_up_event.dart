part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.dataChanged({
    GenericFormzInput? name,
    EmailInput? email,
    PhoneNumberInput? phone,
    PasswordInput? password,
    ConfirmPasswordInput? confirmPassword,
    GenericFormzInput? obscurePassword,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) = _DataChanged;
  const factory SignUpEvent.signUp() = _SignUp;
}
