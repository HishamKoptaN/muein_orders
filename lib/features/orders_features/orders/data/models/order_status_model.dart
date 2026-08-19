import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_status_model.freezed.dart';
part 'order_status_model.g.dart';

@freezed
abstract class OrderStatusModel with _$OrderStatusModel {
  const factory OrderStatusModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "sort") int? sort,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "icon") String? icon,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "translations") Translations? translations,
    @JsonKey(name: "original") Original? original,
    @JsonKey(name: "parent") Original? parent,
    @JsonKey(name: 'color') String? color,
  }) = _OrderStatusModel;
  factory OrderStatusModel.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusModelFromJson(json);
}

@freezed
abstract class Original with _$Original {
  const factory Original({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _Original;
  factory Original.fromJson(Map<String, dynamic> json) =>
      _$OriginalFromJson(json);
}

@freezed
abstract class Translations with _$Translations {
  const factory Translations({@JsonKey(name: "ar") Ar? ar}) = _Translations;
  factory Translations.fromJson(Map<String, dynamic> json) =>
      _$TranslationsFromJson(json);
}

@freezed
abstract class Ar with _$Ar {
  const factory Ar({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "message") String? message,
  }) = _Ar;
  factory Ar.fromJson(Map<String, dynamic> json) => _$ArFromJson(json);
}
