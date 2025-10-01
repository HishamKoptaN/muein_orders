part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfile() = _GetProfile;
  const factory ProfileEvent.startEditing() = _StartEditing;
  const factory ProfileEvent.dataChanged({
    GenericFormzInput<File>? image,
    GenericFormzInput<String>? name,
    PhoneNumberInput? phone,
  }) = _DataChanged;
  const factory ProfileEvent.updateProfile() = _UpdateProfile;
  const factory ProfileEvent.cancelEditing() = __CancelEditing;
}
