import 'package:freezed_annotation/freezed_annotation.dart';
part 'orders_res_entity.freezed.dart';
part 'orders_res_entity.g.dart';

@freezed
class OrdersResEntity with _$OrdersResEntity {
  const factory OrdersResEntity({
    PackageEntity? package,
    List<OrderEntity>? orders,
  }) = _OrdersResEntity;

  factory OrdersResEntity.fromJson(Map<String, dynamic> json) =>
      _$OrdersResEntityFromJson(json);
}

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    int? id,
    String? name,
    String? printedName,
    dynamic countryCode,
    bool? status,
    String? createdAt,
    String? executionNum,
    String? orderNum,
    OrderPackageEntity? package,
    int? cartonCount,
    int? ordersCount,
    String? totalAmount,
    DateTime? date,
    int? days,
    String? email,
    String? phone,
    bool? isQuranPrinted,
    bool? isQuranPhotographed,
    bool? isDistributionPhotographed,
    bool? isLocationReceived,
    dynamic locationLink,
    bool? isFinalReportReady,
    bool? isReportSent,
    bool? stickerPrepared,
    bool? videosUploaded,
    bool? finalEstimateReady,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}

@freezed
class OrderPackageEntity with _$OrderPackageEntity {
  const factory OrderPackageEntity({
    int? id,
    String? type,
    int? quantity,
  }) = _OrderPackageEntity;

  factory OrderPackageEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderPackageEntityFromJson(json);
}

@freezed
class PackageEntity with _$PackageEntity {
  const factory PackageEntity({
    int? id,
    int? quantity,
  }) = _PackageEntity;

  factory PackageEntity.fromJson(Map<String, dynamic> json) =>
      _$PackageEntityFromJson(json);
}
