import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'financial_account_entity.freezed.dart';

@freezed
abstract class FinancialAccountEntity with _$FinancialAccountEntity {
  const factory FinancialAccountEntity({int? id, String? balance}) =
      _FinancialAccountEntity;
}
