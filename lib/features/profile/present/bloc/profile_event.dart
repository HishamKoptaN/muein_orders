part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfile() = _GetProfile;
  const factory ProfileEvent.dataChanged({
    required UpdateProfileReqEntity? updateProfileReq,
  }) = _DataChanged;
  const factory ProfileEvent.updateProfile() = _UpdateProfile;
}
