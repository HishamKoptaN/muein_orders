import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class LocaleJsonConverter implements JsonConverter<Locale, Map<String, dynamic>> {
  const LocaleJsonConverter();

  @override
  Locale fromJson(Map<String, dynamic> json) {
    return Locale(
      json['languageCode'] as String,
      json['countryCode'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson(Locale locale) {
    return {
      'languageCode': locale.languageCode,
      'countryCode': locale.countryCode,
    };
  }
}
