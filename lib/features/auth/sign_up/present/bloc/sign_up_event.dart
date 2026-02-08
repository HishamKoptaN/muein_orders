part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.dataChanged({
    GenericFormzInput? name,
    EmailInput? email,
    PhoneNumberInput? phone,
    PasswordInput? password,
    PasswordInput? confirmPassword,
    bool? obscurePassword,
  }) = _DataChanged;
  const factory SignUpEvent.signUp() = _SignUp;
}
