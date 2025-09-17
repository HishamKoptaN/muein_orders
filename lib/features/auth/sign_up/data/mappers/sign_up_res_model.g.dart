// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpResModelImpl _$$SignUpResModelImplFromJson(Map<String, dynamic> json) =>
    _$SignUpResModelImpl(
      token: json['token'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$SignUpResModelImplToJson(
        _$SignUpResModelImpl instance) =>
    <String, dynamic>{
      if (instance.token case final value?) 'token': value,
      if (instance.role case final value?) 'role': value,
    };
