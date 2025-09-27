part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded({required ProfileEntity profile}) = _Loaded;
  const factory ProfileState.error({required String message}) = _Error;
}
