import 'package:flutter/foundation.dart';

import '../../../../core/entities/meta_entity.dart';
import '../../../../core/mapper/meta_mapper.dart';
import '../../domain/entities/create_expense_entity.dart';
import '../../domain/entities/expenses_res_entity.dart';
import '../../domain/entities/financial_account_entity.dart';
import '../models/create_expense_req_model.dart';
import '../models/expenses_res_model.dart';
import '../models/financial_account_model.dart';

extension FinancialAccountMapper on FinancialAccountModel {
  FinancialAccountEntity toEntity() {
    return FinancialAccountEntity(id: id ?? 0, balance: balance ?? '');
  }
}

extension ExpensesResMapper on ExpensesResModel {
  ExpensesResEntity toEntity() {
    return ExpensesResEntity(
      data: expenses?.map((c) => c.toEntity()).toList() ?? [],
      meta: meta?.toEntity() ?? const MetaEntity(),
    );
  }
}

extension ExpenseMapper on ExpenseModel {
  ExpenseEntity toEntity() {
    return ExpenseEntity(
      id: id,
      amount: amount,
      currency: currency,
      notes: notes,
      description: description,
      receiptPath: receiptPath,
      status: status,
      adminNotes: adminNotes,
      reviewedAt: reviewedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      expenseType: expenseType?.toEntity(),
    );
  }
}

extension ExpenseTypeMapper on ExpenseTypeModel {
  ExpenseTypeEntity toEntity() {
    return ExpenseTypeEntity(id: id, name: name);
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
