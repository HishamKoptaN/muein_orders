import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/meta_model.dart';

part 'expenses_res_model.freezed.dart';
part 'expenses_res_model.g.dart';

@freezed
abstract class ExpensesResModel with _$ExpensesResModel {
  const factory ExpensesResModel({
    @JsonKey(name: 'data') List<ExpenseModel>? expenses,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _ExpensesResModel;
  factory ExpensesResModel.fromJson(Map<String, dynamic> json) =>
      _$ExpensesResModelFromJson(json);
}

@freezed
abstract class ExpenseModel with _$ExpenseModel {
  const factory ExpenseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'receipt_path') String? receiptPath,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'admin_notes') String? adminNotes,
    @JsonKey(name: 'reviewed_at') String? reviewedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'expense_type') ExpenseTypeModel? expenseType,
  }) = _ExpenseModel;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);
}

@freezed
abstract class ExpenseTypeModel with _$ExpenseTypeModel {
  const factory ExpenseTypeModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _ExpenseTypeModel;

  factory ExpenseTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseTypeModelFromJson(json);
}
