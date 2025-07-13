import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_event.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.updateData({String? email, String? password}) =
      _UpdateData;
  const factory SignInEvent.fireSignIn() = _FireSignIn;
}
