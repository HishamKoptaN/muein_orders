// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpReqModelImpl _$$SignUpReqModelImplFromJson(Map<String, dynamic> json) =>
    _$SignUpReqModelImpl(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
      fcmToken: json['fcm_token'] as String?,
      idToken: json['id_token'] as String?,
    );

Map<String, dynamic> _$$SignUpReqModelImplToJson(
        _$SignUpReqModelImpl instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.countryId case final value?) 'country_id': value,
      if (instance.fcmToken case final value?) 'fcm_token': value,
      if (instance.idToken case final value?) 'id_token': value,
    };
