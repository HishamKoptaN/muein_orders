part of 'forgot_pass_bloc.dart';

@freezed
class ForgotPassState with _$ForgotPassState {
  const factory ForgotPassState.loading() = ForgotPassLoading;
  const factory ForgotPassState.loaded({
    required EmailInput email,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory ForgotPassState.success() = ForgotPassSuccess;
  const factory ForgotPassState.failure(String error) = ForgotPassFailure;
}
