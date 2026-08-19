import 'package:form_inputs/form_inputs.dart';

class CreateExpenseReqEntity {
  CreateExpenseReqEntity({this.amount, this.notes});
  final GenericFormInput? amount;
  final GenericFormInput? notes;
  CreateExpenseReqEntity copyWith({
    GenericFormInput? amount,
    GenericFormInput? notes,
  }) {
    return CreateExpenseReqEntity(
      amount: amount ?? this.amount,
      notes: notes ?? this.notes,
    );
  }
}
