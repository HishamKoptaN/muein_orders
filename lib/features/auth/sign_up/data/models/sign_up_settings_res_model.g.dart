// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_settings_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpSettingsResModelImpl _$$SignUpSettingsResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpSettingsResModelImpl(
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SignUpSettingsResModelImplToJson(
        _$SignUpSettingsResModelImpl instance) =>
    <String, dynamic>{
      if (instance.countries?.map((e) => e.toJson()).toList() case final value?)
        'countries': value,
    };

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.code case final value?) 'code': value,
    };
