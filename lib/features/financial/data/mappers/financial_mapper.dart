import 'package:flutter/foundation.dart';

import '../../../../core/entities/meta_entity.dart';
import '../../../../core/mapper/meta_mapper.dart';
import '../../domain/entities/create_expense_entity.dart';
import '../../domain/entities/expenses_res_entity.dart';
import '../models/create_expense_req_model.dart';
import '../models/expenses_res_model.dart';

extension ExpensesResMapper on ExpensesResModel {
  ExpensesResEntity toEntity() {
    return ExpensesResEntity(
      expenses: expenses?.map((c) => c.toEntity()).toList() ?? [],
      meta: meta?.toEntity() ?? const MetaEntity(),
    );
  }
}

extension ExpenseMapper on ExpenseModel {
  ExpenseEntity toEntity() {
    return ExpenseEntity(
      id: id ?? 0,
      amount: amount?.toString() ?? '',
      note: notes ?? '',
      createdAt: createdAt != null ? DateTime.parse(createdAt!) : null,
    );
  }
}

extension CreateExpenseReqMapper on CreateExpenseReqEntity {
  CreateExpenseModel toModel() {
    final amountValue = amount?.value != null && amount!.value!.isNotEmpty
        ? double.tryParse(amount!.value!)
        : null;
    final notesValue = notes?.value ?? '';

    debugPrint(' CreateExpenseMapper - amount.value: ${amount?.value}');
    debugPrint(' CreateExpenseMapper - parsed amount: $amountValue');
    debugPrint(' CreateExpenseMapper - notes.value: ${notes?.value}');
    debugPrint(' CreateExpenseMapper - notes: $notesValue');

    return CreateExpenseModel(amount: amountValue, notes: notesValue);
  }
}
