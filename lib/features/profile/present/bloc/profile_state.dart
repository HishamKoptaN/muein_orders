part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _ProfileLoading;
  const factory ProfileState.loaded({
    required ProfileResEntity profile,
    required UpdateProfileReqEntity? updateProfileReq,
    required bool isEditing,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory ProfileState.success() = _Success;
  const factory ProfileState.failure({required String error}) = _Failure;
}
