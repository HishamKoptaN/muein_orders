// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpensesResModel _$ExpensesResModelFromJson(Map<String, dynamic> json) =>
    _ExpensesResModel(
      expenses: (json['data'] as List<dynamic>?)
          ?.map((e) => ExpenseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExpensesResModelToJson(_ExpensesResModel instance) =>
    <String, dynamic>{
      'data': ?instance.expenses?.map((e) => e.toJson()).toList(),
      'meta': ?instance.meta?.toJson(),
    };

_ExpenseModel _$ExpenseModelFromJson(Map<String, dynamic> json) =>
    _ExpenseModel(
      id: (json['id'] as num?)?.toInt(),
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      notes: json['notes'] as String?,
      description: json['description'] as String?,
      receiptPath: json['receipt_path'] as String?,
      status: json['status'] as String?,
      adminNotes: json['admin_notes'] as String?,
      reviewedAt: json['reviewed_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      expenseType: json['expense_type'] == null
          ? null
          : ExpenseTypeModel.fromJson(
              json['expense_type'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ExpenseModelToJson(_ExpenseModel instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'amount': ?instance.amount,
      'currency': ?instance.currency,
      'notes': ?instance.notes,
      'description': ?instance.description,
      'receipt_path': ?instance.receiptPath,
      'status': ?instance.status,
      'admin_notes': ?instance.adminNotes,
      'reviewed_at': ?instance.reviewedAt,
      'created_at': ?instance.createdAt,
      'updated_at': ?instance.updatedAt,
      'expense_type': ?instance.expenseType?.toJson(),
    };

_ExpenseTypeModel _$ExpenseTypeModelFromJson(Map<String, dynamic> json) =>
    _ExpenseTypeModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ExpenseTypeModelToJson(_ExpenseTypeModel instance) =>
    <String, dynamic>{'id': ?instance.id, 'name': ?instance.name};
