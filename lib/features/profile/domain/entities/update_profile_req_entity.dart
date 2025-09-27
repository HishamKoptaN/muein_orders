import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_req_entity.freezed.dart';

@freezed
class UpdateProfileReqEntity with _$UpdateProfileReqEntity {
  const factory UpdateProfileReqEntity({
    String? name,
    String? phone,
  }) = _UpdateProfileReqEntity;
}
