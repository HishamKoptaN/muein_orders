// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResModel _$ProfileResModelFromJson(Map<String, dynamic> json) =>
    _ProfileResModel(
      id: (json['id'] as num?)?.toInt(),
      avatar: json['avatar'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$ProfileResModelToJson(_ProfileResModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'avatar': ?instance.avatar,
      'name': ?instance.name,
      'phone': ?instance.phone,
      'created_at': ?instance.createdAt,
    };
