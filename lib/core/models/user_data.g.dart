// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      token: json['token'] as String?,
      fcmToken: json['fcm_token'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      if (instance.token case final value?) 'token': value,
      if (instance.fcmToken case final value?) 'fcm_token': value,
      if (instance.role case final value?) 'role': value,
    };
