part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.dataChanged({
    GenericFormInput? name,
    EmailFormInput? email,
    PhoneNumberFormInput? phone,
    PasswordFormInput? password,
    PasswordFormInput? confirmPassword,
    BoolFormInput? obscurePassword,
  }) = _DataChanged;
  const factory SignUpEvent.signUp() = _SignUp;
}
