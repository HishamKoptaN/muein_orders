part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfile() = _GetProfile;
  const factory ProfileEvent.dataChanged({required _Loaded loadedState}) =
      _DataChanged;
  const factory ProfileEvent.updateProfile() = _UpdateProfile;
}
