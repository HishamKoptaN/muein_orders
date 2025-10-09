// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      data: json['data'],
      error: json['error'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      if (instance.message case final value?) 'message': value,
      if (instance.statusCode case final value?) 'statusCode': value,
      if (instance.data case final value?) 'data': value,
      if (instance.error case final value?) 'error': value,
      if (instance.type case final value?) 'type': value,
      if (instance.title case final value?) 'title': value,
      if (instance.detail case final value?) 'detail': value,
      if (instance.instance case final value?) 'instance': value,
    };
