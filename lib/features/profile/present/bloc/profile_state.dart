part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _ProfileLoading;
  const factory ProfileState.loaded({
    required ProfileResEntity profile,
    required bool isEditingProfile,
    required FormzSubmissionStatus formzSubmissionStatus,
  }) = _Loaded;
  const factory ProfileState.success() = _Success;
  const factory ProfileState.failure({
    required String error,
  }) = _Failure;
}
