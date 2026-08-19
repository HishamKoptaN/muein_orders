// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_req_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInReqBodyModel _$SignInReqBodyModelFromJson(Map<String, dynamic> json) =>
    _SignInReqBodyModel(
      idToken: json['id_token'] as String,
      deviceType: json['deviceType'] as String,
    );

Map<String, dynamic> _$SignInReqBodyModelToJson(_SignInReqBodyModel instance) =>
    <String, dynamic>{
      'id_token': instance.idToken,
      'deviceType': instance.deviceType,
    };
