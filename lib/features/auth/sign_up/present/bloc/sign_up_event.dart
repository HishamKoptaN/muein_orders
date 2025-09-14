import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_event.freezed.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.updateData({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    int? countryId,
    String? country,
    String? password,
    String? confirmPassword,
  }) = _UpdateData;
  const factory SignUpEvent.signUp() = _SignUp;
  const factory SignUpEvent.getSettings() = _GetCountries;
}
