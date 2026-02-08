// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Role _$RoleFromJson(Map<String, dynamic> json) => _Role(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  guardName: json['guard_name'] as String?,
  permissions: (json['permissions'] as List<dynamic>?)
      ?.map((e) => Permission.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$RoleToJson(_Role instance) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'guard_name': ?instance.guardName,
  'permissions': ?instance.permissions?.map((e) => e.toJson()).toList(),
  'created_at': ?instance.createdAt,
  'updated_at': ?instance.updatedAt,
};
