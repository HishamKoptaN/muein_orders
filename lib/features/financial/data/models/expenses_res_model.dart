import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/meta_model.dart';

part 'expenses_res_model.freezed.dart';
part 'expenses_res_model.g.dart';

@freezed
abstract class ExpensesResModel with _$ExpensesResModel {
  const factory ExpensesResModel({
    @JsonKey(name: 'expenses') List<ExpenseModel>? expenses,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _ExpensesResModel;

  factory ExpensesResModel.fromJson(Map<String, dynamic> json) =>
      _$ExpensesResModelFromJson(json);
}

@freezed
abstract class ExpenseModel with _$ExpenseModel {
  const factory ExpenseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _ExpenseModel;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);
}
