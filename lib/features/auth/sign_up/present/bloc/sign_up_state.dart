part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = _Loading;
  const factory SignUpState.settingsLoading() = _SettingsLoading;
  const factory SignUpState.success() = _Success;
  const factory SignUpState.loaded({
    required GenericFormzInput name,
    required EmailInput email,
    required PhoneNumberInput phone,
    required PasswordInput password,
    required PasswordInput confirmPassword,
    required ConfirmPasswordInput confirmPasswordInput,
    @Default(true) bool obscurePassword,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory SignUpState.failure({required String error}) = _Failure;
}
