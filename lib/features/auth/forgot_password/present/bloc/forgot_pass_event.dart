part of 'forgot_pass_bloc.dart';

@freezed
abstract class ForgotPassEvent with _$ForgotPassEvent {
  const factory ForgotPassEvent.dataChanged({EmailInput? email}) = _DataChanged;
  const factory ForgotPassEvent.sendPassResetEmail() = SendPassResetEmail;
}
