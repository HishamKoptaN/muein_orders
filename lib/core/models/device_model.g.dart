// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) => _DeviceModel(
  model: json['model'] as String,
  os: json['os'] as String,
  deviceId: json['device_id'] as String,
  fcmToken: json['fcm_token'] as String,
);

Map<String, dynamic> _$DeviceModelToJson(_DeviceModel instance) =>
    <String, dynamic>{
      'model': instance.model,
      'os': instance.os,
      'device_id': instance.deviceId,
      'fcm_token': instance.fcmToken,
    };
