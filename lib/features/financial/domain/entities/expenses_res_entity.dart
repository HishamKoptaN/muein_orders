import '../../../../core/entities/meta_entity.dart';

class ExpensesResEntity {
  ExpensesResEntity({
    this.expenses,
    this.meta,
  });
  final List<ExpenseEntity>? expenses;
  final MetaEntity? meta;
}

class ExpenseEntity {
  ExpenseEntity({
    this.id,
    this.amount,
    this.note,
    this.createdAt,
  });
  final int? id;
  final String? amount;
  final String? note;
  final DateTime? createdAt;
}
