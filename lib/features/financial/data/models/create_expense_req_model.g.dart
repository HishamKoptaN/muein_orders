// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_expense_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateExpenseModel _$CreateExpenseModelFromJson(Map<String, dynamic> json) =>
    _CreateExpenseModel(
      amount: (json['amount'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CreateExpenseModelToJson(_CreateExpenseModel instance) =>
    <String, dynamic>{'amount': ?instance.amount, 'notes': ?instance.notes};
