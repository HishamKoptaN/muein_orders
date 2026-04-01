import 'package:freezed_annotation/freezed_annotation.dart';
part 'firebase_models.freezed.dart';
part 'firebase_models.g.dart';

@freezed
class FirebaseRelease with _$FirebaseRelease {
  const factory FirebaseRelease({
    required String name,
    required String displayVersion,
    required DateTime createTime,
  }) = _FirebaseRelease;
  factory FirebaseRelease.fromJson(Map<String, dynamic> json) =>
      _$FirebaseReleaseFromJson(json);
}

@freezed
class ReleaseListResponse with _$ReleaseListResponse {
  const factory ReleaseListResponse({
    @Default([]) List<FirebaseRelease> releases,
  }) = _ReleaseListResponse;

  factory ReleaseListResponse.fromJson(Map<String, dynamic> json) =>
      _$ReleaseListResponseFromJson(json);
}
