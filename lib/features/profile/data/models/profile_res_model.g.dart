// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResModel _$ProfileResModelFromJson(Map<String, dynamic> json) =>
    _ProfileResModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$ProfileResModelToJson(_ProfileResModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'image': ?instance.image,
      'phone': ?instance.phone,
      'email': ?instance.email,
      'created_at': ?instance.createdAt,
    };
