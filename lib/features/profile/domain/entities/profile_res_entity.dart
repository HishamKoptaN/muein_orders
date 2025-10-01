import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_res_entity.freezed.dart';

@freezed
class ProfileResEntity with _$ProfileResEntity {
  const factory ProfileResEntity({
     int? id,
     String? image,
     String? name,
     String? phone,
     String? email,
     BalanceEntity? balance,
     String? createdAt,
     @JsonKey(ignore: true) File? selectedImage,
  }) = _ProfileResEntity;
}

@freezed
class BalanceEntity with _$BalanceEntity {
  const factory BalanceEntity({
     String? currentBalance,
     String? totalEarned,
     String? totalSpent,
     String? pendingBalance,
     String? currency,
  }) = _BalanceEntity;
}
