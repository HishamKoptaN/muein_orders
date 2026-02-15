// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileReqModel _$UpdateProfileReqModelFromJson(
  Map<String, dynamic> json,
) => _UpdateProfileReqModel(
  avatar: json['avatar'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$UpdateProfileReqModelToJson(
  _UpdateProfileReqModel instance,
) => <String, dynamic>{
  'avatar': ?instance.avatar,
  'name': ?instance.name,
  'phone': ?instance.phone,
};
