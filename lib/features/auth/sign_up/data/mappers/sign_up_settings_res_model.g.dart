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
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
      opportunityLookings: (json['opportunity_lookings'] as List<dynamic>?)
          ?.map((e) => OpportunityLooking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SignUpSettingsResModelImplToJson(
        _$SignUpSettingsResModelImpl instance) =>
    <String, dynamic>{
      if (instance.countries?.map((e) => e.toJson()).toList() case final value?)
        'countries': value,
      if (instance.cities?.map((e) => e.toJson()).toList() case final value?)
        'cities': value,
      if (instance.opportunityLookings?.map((e) => e.toJson()).toList()
          case final value?)
        'opportunity_lookings': value,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.countryId case final value?) 'country_id': value,
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

_$OpportunityLookingImpl _$$OpportunityLookingImplFromJson(
        Map<String, dynamic> json) =>
    _$OpportunityLookingImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$OpportunityLookingImplToJson(
        _$OpportunityLookingImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.firstName case final value?) 'first_name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.image case final value?) 'image': value,
    };
