import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_res_model.freezed.dart';
part 'profile_res_model.g.dart';

@freezed
class ProfileResModel with _$ProfileResModel {
  const factory ProfileResModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'phone') String? phone,
    String? email,
    @JsonKey(name: 'balance') Balance? balance,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _ProfileResModel;

  factory ProfileResModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResModelFromJson(json);
}

@freezed
class Balance with _$Balance {
  const factory Balance({
    @JsonKey(name: 'current_balance') String? currentBalance,
    @JsonKey(name: 'total_earned') String? totalEarned,
    @JsonKey(name: 'total_spent') String? totalSpent,
    @JsonKey(name: 'pending_balance') String? pendingBalance,
    @JsonKey(name: 'currency') String? currency,
  }) = _Balance;

  factory Balance.fromJson(Map<String, dynamic> json) =>
      _$BalanceFromJson(json);
}
