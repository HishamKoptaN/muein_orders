import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'financial_account_model.freezed.dart';
part 'financial_account_model.g.dart';

@freezed
abstract class FinancialAccountModel with _$FinancialAccountModel {
  const factory FinancialAccountModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'balance') String? balance,
  }) = _FinancialAccountModel;

  factory FinancialAccountModel.fromJson(Map<String, Object?> json) =>
      _$FinancialAccountModelFromJson(json);
}
