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
      'countries': instance.countries,
      'cities': instance.cities,
      'opportunity_lookings': instance.opportunityLookings,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_id': instance.countryId,
    };

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
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
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
    };
