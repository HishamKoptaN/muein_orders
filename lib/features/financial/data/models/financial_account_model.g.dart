// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FinancialAccountModel _$FinancialAccountModelFromJson(
  Map<String, dynamic> json,
) => _FinancialAccountModel(
  id: (json['id'] as num?)?.toInt(),
  balance: json['balance'] as String?,
);

Map<String, dynamic> _$FinancialAccountModelToJson(
  _FinancialAccountModel instance,
) => <String, dynamic>{'id': ?instance.id, 'balance': ?instance.balance};
