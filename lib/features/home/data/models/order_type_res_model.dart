import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_type_res_model.freezed.dart';
part 'order_type_res_model.g.dart';

@freezed
class OrderTypeResModel with _$OrderTypeResModel {
  const factory OrderTypeResModel({
    @JsonKey(name: 'package') Package? package,
    @JsonKey(name: 'orders_count') int? ordersCount,
    @JsonKey(name: 'total_quran_copies') int? totalQuranCopies,
  }) = _OrderTypeResModel;

  factory OrderTypeResModel.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeResModelFromJson(json);
}

@freezed
class Package with _$Package {
  const factory Package({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'type') Type? type,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);
}

@freezed
class Type with _$Type {
  const factory Type({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
