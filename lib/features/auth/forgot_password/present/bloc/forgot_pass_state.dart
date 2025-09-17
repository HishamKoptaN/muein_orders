part of 'forgot_pass_bloc.dart';

@freezed
class ForgotPassState with _$ForgotPassState {
  const factory ForgotPassState.initial() = ForgotPassInitial;
  const factory ForgotPassState.loading() = ForgotPassLoading;
  const factory ForgotPassState.success() = ForgotPassSuccess;
  const factory ForgotPassState.failure(String error) = ForgotPassFailure;
}
