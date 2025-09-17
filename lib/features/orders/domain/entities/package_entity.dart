import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_entity.freezed.dart';
part 'package_entity.g.dart';

@freezed
class PackageEntity with _$PackageEntity {
  const factory PackageEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'orders_count') int? ordersCount,
    @JsonKey(name: 'total_amount') String? totalAmount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _PackageEntity;

  factory PackageEntity.fromJson(Map<String, dynamic> json) =>
      _$PackageEntityFromJson(json);
}
