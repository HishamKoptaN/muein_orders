// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_token_req_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExchangeTokenReqBodyModel _$ExchangeTokenReqBodyModelFromJson(
  Map<String, dynamic> json,
) => _ExchangeTokenReqBodyModel(
  idToken: json['id_token'] as String,
  fcmToken: json['fcm_token'] as String?,
  device: json['device'] == null
      ? null
      : DeviceModel.fromJson(json['device'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ExchangeTokenReqBodyModelToJson(
  _ExchangeTokenReqBodyModel instance,
) => <String, dynamic>{
  'id_token': instance.idToken,
  'fcm_token': ?instance.fcmToken,
  'device': ?instance.device?.toJson(),
};
