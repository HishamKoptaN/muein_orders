// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  token: json['token'] as String?,
  fcmToken: json['fcm_token'] as String?,
  role: json['role'] as String?,
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'token': ?instance.token,
  'fcm_token': ?instance.fcmToken,
  'role': ?instance.role,
};
