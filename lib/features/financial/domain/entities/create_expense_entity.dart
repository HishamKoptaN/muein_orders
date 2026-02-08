import 'package:form_inputs/form_inputs.dart';

class CreateExpenseReqEntity {
  CreateExpenseReqEntity({this.amount, this.notes});
  final GenericFormzInput<String>? amount;
  final GenericFormzInput<String>? notes;
  CreateExpenseReqEntity copyWith({
    GenericFormzInput<String>? amount,
    GenericFormzInput<String>? notes,
  }) {
    return CreateExpenseReqEntity(
      amount: amount ?? this.amount,
      notes: notes ?? this.notes,
    );
  }
}
