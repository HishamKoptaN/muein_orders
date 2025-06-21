import 'package:freezed_annotation/freezed_annotation.dart';
part 'permission.freezed.dart';
part 'permission.g.dart';

@freezed
class Permission with _$Permission {
  const factory Permission({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "guard_name") String? guardName,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Permission;
  factory Permission.fromJson(Map<String, dynamic> json) =>
      _$PermissionFromJson(json);
}
