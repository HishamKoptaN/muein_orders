// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_req_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInReqBodyModel _$SignInReqBodyModelFromJson(Map<String, dynamic> json) =>
    _SignInReqBodyModel(
      idToken: json['id_token'] as String,
      fcmToken: json['fcm_token'] as String,
      deviceType: json['device_type'] as String,
    );

Map<String, dynamic> _$SignInReqBodyModelToJson(_SignInReqBodyModel instance) =>
    <String, dynamic>{
      'id_token': instance.idToken,
      'fcm_token': instance.fcmToken,
      'device_type': instance.deviceType,
    };
