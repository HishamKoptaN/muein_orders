import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entity.freezed.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required String id,
    required String name,
    required String email,
    String? phone,
    String? avatar,
    String? address,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProfileEntity;

  const ProfileEntity._();
}
