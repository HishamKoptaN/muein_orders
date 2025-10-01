// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfileReqModelImpl _$$UpdateProfileReqModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProfileReqModelImpl(
      image: const FileConverter().fromJson(json['image'] as String?),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$UpdateProfileReqModelImplToJson(
        _$UpdateProfileReqModelImpl instance) =>
    <String, dynamic>{
      if (const FileConverter().toJson(instance.image) case final value?)
        'image': value,
      if (instance.name case final value?) 'name': value,
      if (instance.phone case final value?) 'phone': value,
    };
