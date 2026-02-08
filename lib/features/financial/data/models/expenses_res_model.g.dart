// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpensesResModel _$ExpensesResModelFromJson(Map<String, dynamic> json) =>
    _ExpensesResModel(
      expenses: (json['expenses'] as List<dynamic>?)
          ?.map((e) => ExpenseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExpensesResModelToJson(_ExpensesResModel instance) =>
    <String, dynamic>{
      'expenses': ?instance.expenses?.map((e) => e.toJson()).toList(),
      'meta': ?instance.meta?.toJson(),
    };

_ExpenseModel _$ExpenseModelFromJson(Map<String, dynamic> json) =>
    _ExpenseModel(
      id: (json['id'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$ExpenseModelToJson(_ExpenseModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'amount': ?instance.amount,
      'notes': ?instance.notes,
      'created_at': ?instance.createdAt,
    };
