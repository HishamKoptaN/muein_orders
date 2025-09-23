import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_type_res_entity.freezed.dart';

@freezed
class OrderTypeResEntity with _$OrderTypeResEntity {
  const factory OrderTypeResEntity({
    @JsonKey(name: 'package') PackageEntity? package,
    @JsonKey(name: 'orders_count') int? ordersCount,
    @JsonKey(name: 'total_quran_copies') int? totalQuranCopies,
  }) = _OrderTypeResEntity;
}

@freezed
class PackageEntity with _$PackageEntity {
  const factory PackageEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'type') TypeEntity? type,
  }) = _PackageEntity;
}

@freezed
class TypeEntity with _$TypeEntity {
  const factory TypeEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _TypeEntity;
}
