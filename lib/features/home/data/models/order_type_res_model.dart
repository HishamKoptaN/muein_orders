import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_type_res_model.freezed.dart';
part 'order_type_res_model.g.dart';

@freezed
abstract class OrderTypeResModel with _$OrderTypeResModel {
  const factory OrderTypeResModel({
    @JsonKey(name: 'product_type') ProductTypeModel? productType,
    @JsonKey(name: 'orders_count') int? ordersCount,
    @JsonKey(name: 'total_quran_copies') int? totalQuranCopies,
  }) = _OrderTypeResModel;

  factory OrderTypeResModel.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeResModelFromJson(json);
}

@freezed
abstract class ProductTypeModel with _$ProductTypeModel {
  const factory ProductTypeModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'docs_count') int? docsCount,
  }) = _ProductTypeModel;
  factory ProductTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ProductTypeModelFromJson(json);
}
