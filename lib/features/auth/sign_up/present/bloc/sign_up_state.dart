import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mubin_orders/core/error/api_error_model.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = _Loading;
  const factory SignUpState.settingsLoading() = _SettingsLoading;
  const factory SignUpState.success() = _Success;
  const factory SignUpState.loaded({
    required GenericFormzInput name,
    required GenericFormzInput lastName,
    required EmailInput email,
    required PhoneNumberInput phone,
    required GenericFormzInput countrtyId,
    required PasswordInput password,
    required ConfirmPasswordInput confirmPassword,
    required FormzSubmissionStatus formzSubmissionStatus,
    required bool loading,
  }) = _Loaded;
  const factory SignUpState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
