// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpReqModel _$SignUpReqModelFromJson(Map<String, dynamic> json) =>
    _SignUpReqModel(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
      idToken: json['id_token'] as String?,
    );

Map<String, dynamic> _$SignUpReqModelToJson(_SignUpReqModel instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'phone': ?instance.phone,
      'country_id': ?instance.countryId,
      'id_token': ?instance.idToken,
    };
