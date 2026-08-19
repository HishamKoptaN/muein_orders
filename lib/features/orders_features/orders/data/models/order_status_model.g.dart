// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderStatusModel _$OrderStatusModelFromJson(Map<String, dynamic> json) =>
    _OrderStatusModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      slug: json['slug'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
      message: json['message'] as String?,
      icon: json['icon'] as String?,
      isActive: json['is_active'] as bool?,
      translations: json['translations'] == null
          ? null
          : Translations.fromJson(json['translations'] as Map<String, dynamic>),
      original: json['original'] == null
          ? null
          : Original.fromJson(json['original'] as Map<String, dynamic>),
      parent: json['parent'] == null
          ? null
          : Original.fromJson(json['parent'] as Map<String, dynamic>),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$OrderStatusModelToJson(_OrderStatusModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'type': ?instance.type,
      'slug': ?instance.slug,
      'sort': ?instance.sort,
      'message': ?instance.message,
      'icon': ?instance.icon,
      'is_active': ?instance.isActive,
      'translations': ?instance.translations?.toJson(),
      'original': ?instance.original?.toJson(),
      'parent': ?instance.parent?.toJson(),
      'color': ?instance.color,
    };

_Original _$OriginalFromJson(Map<String, dynamic> json) =>
    _Original(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$OriginalToJson(_Original instance) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
};

_Translations _$TranslationsFromJson(Map<String, dynamic> json) =>
    _Translations(
      ar: json['ar'] == null
          ? null
          : Ar.fromJson(json['ar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TranslationsToJson(_Translations instance) =>
    <String, dynamic>{'ar': ?instance.ar?.toJson()};

_Ar _$ArFromJson(Map<String, dynamic> json) =>
    _Ar(name: json['name'] as String?, message: json['message'] as String?);

Map<String, dynamic> _$ArToJson(_Ar instance) => <String, dynamic>{
  'name': ?instance.name,
  'message': ?instance.message,
};
