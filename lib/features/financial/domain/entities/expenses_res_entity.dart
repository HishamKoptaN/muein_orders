import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/entities/meta_entity.dart';
part 'expenses_res_entity.freezed.dart';

@freezed
abstract class ExpensesResEntity with _$ExpensesResEntity {
  const factory ExpensesResEntity({
    List<ExpenseEntity>? data,
    MetaEntity? meta,
  }) = _ExpensesResEntity;
}

@freezed
abstract class ExpenseEntity with _$ExpenseEntity {
  const factory ExpenseEntity({
    int? id,
    String? amount,
    String? currency,
    String? notes,
    String? description,
    String? receiptPath,
    String? status,
    String? adminNotes,
    String? reviewedAt,
    String? createdAt,
    String? updatedAt,
    ExpenseTypeEntity? expenseType,
  }) = _ExpenseEntity;
}

@freezed
abstract class ExpenseTypeEntity with _$ExpenseTypeEntity {
  const factory ExpenseTypeEntity({int? id, String? name}) = _ExpenseTypeEntity;
}
