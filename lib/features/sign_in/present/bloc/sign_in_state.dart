import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/errors/api_error_model.dart';
import 'package:formz/formz.dart';

import '../../../../core/form_inputs/email_input.dart';
import '../../../../core/form_inputs/password_input.dart';
part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = _Loading;
  const factory SignInState.loaded({
    required EmailInput email,
    required LoginPasswordInput password,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory SignInState.success() = _Success;
  const factory SignInState.linkSent() = _LinkSent;
  const factory SignInState.failure({
    required ApiErrorModel apiErrorModel,
  }) = _Failure;
}
