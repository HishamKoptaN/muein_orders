part of 'expenses_bloc.dart';

@freezed
class ExpensesEvent with _$ExpensesEvent {
  const factory ExpensesEvent.get({required int page}) = _Get;
  const factory ExpensesEvent.updateData({
    required CreateExpenseReqEntity createExpenseReqEntity,
  }) = _UpdateData;
  const factory ExpensesEvent.create() = _Create;
}
