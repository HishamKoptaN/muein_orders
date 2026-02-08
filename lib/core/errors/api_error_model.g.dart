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
      'message': ?instance.message,
      'statusCode': ?instance.statusCode,
      'data': ?instance.data,
      'error': ?instance.error,
      'type': ?instance.type,
      'title': ?instance.title,
      'detail': ?instance.detail,
      'instance': ?instance.instance,
    };
